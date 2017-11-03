class Dose < ApplicationRecord
  validates :ingredient, :uniqueness => {:scope => :cocktail}
  belongs_to :cocktail
  belongs_to :ingredient

end
