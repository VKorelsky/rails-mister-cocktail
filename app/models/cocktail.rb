class Cocktail < ApplicationRecord
  has_many :doses
  has_many :ingredients, through: :doses

  # validations
  validates :name, presence: true
  validates :name, uniqueness: true
end
