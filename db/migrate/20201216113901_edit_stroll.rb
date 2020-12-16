class EditStroll < ActiveRecord::Migration[6.0]
  def change
    add_reference :strolls, :dog, index: true
    add_reference :strolls, :dog_sitters , index: true
  end
end
