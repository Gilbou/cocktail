class Cocktail < ActiveRecord::Base
  validates :name, presence: true
  has_many :doses
  has_many :ingredients, through: :doses
end
