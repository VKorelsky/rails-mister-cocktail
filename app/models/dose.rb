class Dose < ApplicationRecord
  belongs_to :cocktail
  belongs_to :ingredient

  # validations
  validates :description, presence: true
  validates :cocktail, presence: true
  validates :ingredient, presence: true

end
