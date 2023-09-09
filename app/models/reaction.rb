class Reaction < ApplicationRecord
  belongs_to :adventure
  belongs_to :user
  belongs_to :comment
end
