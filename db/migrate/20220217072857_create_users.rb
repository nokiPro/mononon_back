class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :name, null: false
      t.integer :email, null: false
      t.integer :capacity, null: false, default: 0
      t.timestamps
    end
  end
end
