class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name, null: false
      t.boolean :active, default: true, null: false
      t.text :url
      t.integer :quantity, default: 0, null: false
      t.decimal :amount, default: 0, null: false
      t.references :category, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
