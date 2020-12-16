class AddRefToDogsDogsitters < ActiveRecord::Migration[6.0]
  def change
    add_reference :dogs, :city, index:true 
    add_reference :dog_sitters , :city, index:true
  end
end
