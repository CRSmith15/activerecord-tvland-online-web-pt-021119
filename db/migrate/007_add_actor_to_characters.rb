class AddActorToCharacters < ActiveRecord::Migration[5.1]
  
  def change
    add_column :characters, :actor, :string 
  end
  
end