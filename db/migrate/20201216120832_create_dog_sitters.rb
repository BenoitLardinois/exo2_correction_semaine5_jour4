class CreateDogSitters < ActiveRecord::Migration[6.0]
  def change
    create_table :dog_sitters do |t|

      t.timestamps
    end
  end
end
