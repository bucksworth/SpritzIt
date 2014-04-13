class MigrateOldUrls < ActiveRecord::Migration
  def up
  	Spritz.all.each do |s|
  		unless s.url.nil?
  			url = s.url.split('//')
  			url = url[1].nil? ? url[0].split('/')[0] :  url[1].split('/')[0]
  		end
  		s.update_attribute(:url, url)
  	end
  end

  def down
  end
end
