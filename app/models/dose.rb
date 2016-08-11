class Dose < ApplicationRecord
  belongs_to :cocktail
  belongs_to :ingredient

  # validations
  validates :description, presence: true, allow_blank: false
  validates :cocktail, presence: true
  validates :ingredient, presence: true

  validates :cocktail, uniqueness: {scope: :ingredient, message: "This cocktail already has this ingredient"}
end
