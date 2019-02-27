class CreateOwners < ActiveRecord::Migration[5.2]
  def change
    create_table :owners do |t|
      t.string :firstName
      t.string :lastName
      t.references :cars, foreign_key: true

      t.timestamps
    end
  end
end
