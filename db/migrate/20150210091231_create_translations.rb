class CreateTranslations < ActiveRecord::Migration
  def change
    create_table :translations do |t|
      t.references :dictionary, null: false, index: true
      t.string :source, null: false
      t.string :destination, null: false
      t.timestamps null: false
    end
  end
end
