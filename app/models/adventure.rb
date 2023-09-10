class Adventure < ApplicationRecord
  belongs_to :country
  has_many :comments, dependent: :destroy
  has_many :reactions, dependent: :destroy
  has_many :users, through: :reactions
end

#Agregamos tipos de reacciones como constante.
Kinds = %w[like dislike not_interested neutral].freeze
KindsSpanish = {"like" => "Me gusta", "dislike" => "No me gusta", "not_interested" => "No me interesa", "neutral" => "Neutral"}.freeze