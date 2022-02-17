class CreatePropaties < ActiveRecord::Migration[6.1]
  def change
    create_table :propaties do |t|
      t.string :name, null: false
      t.references :user, null: false, foreign_key: true
      t.datetime :get_time, null: false
      t.integer :point, null: false, default: 0
      t.integer :weight, null: false, default: 0
      t.timestamps
    end
  end
end
