class Role < ActiveRecord::Base
  def self.import(role)
    ActiveRecord::Base.transaction do
      self.create!(role_name: role)
    end 
  end
end
