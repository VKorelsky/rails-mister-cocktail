class Cocktail < ApplicationRecord
  has_many :doses, dependent: :destroy
  has_many :ingredients, through: :doses

  # validations
  validates :name, presence: true
  validates :name, uniqueness: true
  validates :description, presence: true
end
