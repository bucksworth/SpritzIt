# == Schema Information
#
# Table name: spritzs
#
#  id         :integer          not null, primary key
#  url        :string(255)
#  created_at :datetime         not null
#  text       :text
#  updated_at :datetime         not null
#  length     :integer
#  country    :string(255)
#

class Spritz < ActiveRecord::Base
  attr_accessible :created_at, :text, :url, :length, :country
end
