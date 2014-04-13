class AddColumnToSpritz < ActiveRecord::Migration
  def change
    add_column :spritzs, :length, :integer
  end
end
