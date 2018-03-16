class CreateAdmins < ActiveRecord::Migration
  def change
    create_table :admins do |t|
      t.string :username, null: false
      t.boolean :active, default: true, null: false
      t.text :url

      t.timestamps null: false
    end
  end
end
