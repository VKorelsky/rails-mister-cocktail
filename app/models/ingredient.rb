class Ingredient < ApplicationRecord
  has_many :doses, :dependent => :restrict_with_exception
  has_many :cocktails, through: :dose

  # validations
  validates :name, presence: true
  validates :name, uniqueness: true
end

