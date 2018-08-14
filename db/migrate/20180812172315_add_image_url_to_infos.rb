class AddImageUrlToInfos < ActiveRecord::Migration
  def change
    add_column :infos, :image_url, :string
  end
end
