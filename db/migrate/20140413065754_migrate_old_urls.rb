class MigrateOldUrls < ActiveRecord::Migration
  def up
  	Spritz.each do |s|
  		url = s.url.split('//')[1].split('/')[0]
  		s.update_attribute(:url, url)
  	end
  end

  def down
  end
end
