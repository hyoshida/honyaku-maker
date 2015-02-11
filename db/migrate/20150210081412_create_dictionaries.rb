class CreateDictionaries < ActiveRecord::Migration
  def change
    create_table :dictionaries do |t|
      t.string :title, null: false
      t.string :permalink, null: false, index: { unique: true }
      t.timestamps null: false
    end
  end
end
