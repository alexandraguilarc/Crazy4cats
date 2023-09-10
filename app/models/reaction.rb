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
class Reaction < ApplicationRecord
  belongs_to :adventure, optional: true
  belongs_to :user
  belongs_to :comment, optional: true
end
