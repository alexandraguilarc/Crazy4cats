# == Schema Information
#
# Table name: reactions
#
#  id            :bigint           not null, primary key
#  adventure_id  :bigint           not null
#  user_id       :bigint
#  kind          :string
#  reaction_type :string
#  comment_id    :bigint
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#
require "test_helper"

class ReactionTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
