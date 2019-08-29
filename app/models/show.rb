class Show < ActiveRecord::Base
  has_many :characters
  has_many :actors, through: :characters 
  belongs_to :network
  
  def actors_list
    self.actors.collect do |x, y|
      "#{x = self.first_name} #{y = self.last_name}"
    end
  end
  
end