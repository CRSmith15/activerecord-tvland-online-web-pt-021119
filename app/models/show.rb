class Show < ActiveRecord::Base
  has_many :characters
  has_many :actors, through: :characters 
  belongs_to :network
  
  def actors_list
    self.actors.each do |x, y|
      "#{x} #{y}"
    end
  end
  
end