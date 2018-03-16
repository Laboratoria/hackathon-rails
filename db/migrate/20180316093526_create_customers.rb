class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :username, null: false
      t.boolean :active, default: true, null: false
      t.text :url

      t.timestamps null: false
    end
  end
end
