class Ingredient < ApplicationRecord
  has_many :doses # through:
  validates :name, uniqueness: true, presence: true
end
