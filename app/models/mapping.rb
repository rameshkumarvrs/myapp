class Mapping < ActiveRecord::Base
	def self.import(mapping)
    ActiveRecord::Base.transaction do
      self.create!(mapping_name: mapping)
    end 
  end
end
