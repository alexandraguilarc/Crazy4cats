# == Schema Information
#
# Table name: adventures
#
#  id          :bigint           not null, primary key
#  title       :string
#  description :string
#  when_went   :datetime
#  country_id  :bigint
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
require "test_helper"

class AdventureTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
