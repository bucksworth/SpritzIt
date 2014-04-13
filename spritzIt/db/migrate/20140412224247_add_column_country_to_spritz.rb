class AddColumnCountryToSpritz < ActiveRecord::Migration
  def change
    add_column :spritzs, :country, :string
  end
end
