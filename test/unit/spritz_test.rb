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

require 'test_helper'

class SpritzTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
