class CreateScooters < ActiveRecord::Migration[5.2]
  def change
    create_table :scooters do |t|
      t.string :name
      t.text :description
      t.string :picture
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
