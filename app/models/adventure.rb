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
class Adventure < ApplicationRecord
  belongs_to :country
  has_many :comments, dependent: :destroy
  has_many :reactions, dependent: :destroy
  has_many :users, through: :reactions

  #Agregamos tipos de reacciones como constante.
  Kinds = %w[like dislike not_interested neutral].freeze
  KindsSpanish = {"like" => "Me gusta", "dislike" => "No me gusta", "not_interested" => "No me interesa", "neutral" => "Neutral"}.freeze

end