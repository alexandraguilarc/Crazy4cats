# == Schema Information
#
# Table name: comments
#
#  id           :bigint           not null, primary key
#  content      :string
#  adventure_id :bigint
#  user_id      :bigint
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#
class Comment < ApplicationRecord
  belongs_to :adventure
  belongs_to :user
  has_many :reactions, dependent: :destroy
end
