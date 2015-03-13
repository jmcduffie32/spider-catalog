class AddPictureToSpiders < ActiveRecord::Migration
  def change
    add_column :spiders, :picture, :string
  end
end
