class RemoveSpiderIdFromSpiders < ActiveRecord::Migration
  def change
    remove_column :spiders, :spider_id, :integer
  end
end
