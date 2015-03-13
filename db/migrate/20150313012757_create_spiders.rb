class CreateSpiders < ActiveRecord::Migration
  def change
    create_table :spiders do |t|
      t.string :species
      t.boolean :venemous
      t.integer :spider_id
      t.text :description

      t.timestamps null: false
    end
  end
end
