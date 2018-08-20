class CreateCrawlingLols < ActiveRecord::Migration
  def change
    create_table :crawling_lols do |t|
      t.string :nick
      t.string :tier
      t.string :info
      t.string :point
      t.string :win
      t.string :lose
      t.string :ratio

      t.timestamps null: false
    end
  end
end
