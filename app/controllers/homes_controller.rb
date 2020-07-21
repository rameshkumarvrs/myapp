class HomesController < ApplicationController
  def load_csv
    csv_text = CSV.foreach("csv_data.csv", headers: true) do |row|
    load_question = Question.import(row[1])
    load_role = Role.import(row[6])
    load_mapping = Mapping.import(row[9])
    end
  end

end
