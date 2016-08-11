class Ingredient < ApplicationRecord
  has_many :doses
  has_many :cocktails, through: :dose

  # validations
end
