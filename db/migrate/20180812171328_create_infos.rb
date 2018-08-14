class CreateInfos < ActiveRecord::Migration
  def change
    create_table :infos do |t|
      t.references :user, index: true, foreign_key: true
      t.text :introduction
      t.references :play, index: true, foreign_key: true
      t.references :relationship, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
