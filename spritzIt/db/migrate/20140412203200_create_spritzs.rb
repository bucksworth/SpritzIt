class CreateSpritzs < ActiveRecord::Migration
  def change
    create_table :spritzs do |t|
      t.string :url
      t.datetime :created_at
      t.text :text

      t.timestamps
    end
  end
end
