class CreateFairies < ActiveRecord::Migration[6.1]
  def change
    create_table :fairies do |t|
      t.string :name
      t.string :super_power
      t.text :description
      t.integer :price
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
