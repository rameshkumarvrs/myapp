class Question < ActiveRecord::Base
  def self.import(question)
  	ActiveRecord::Base.transaction do
      self.create!(name: question)
  	end	
  end
end
