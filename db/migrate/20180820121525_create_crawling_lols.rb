class CreateCrawlingLols < ActiveRecord::Migration
  def change
    create_table :crawling_lols do |t|
      t.string :tier
      t.string :info

      t.timestamps null: false
    end
  end
end
