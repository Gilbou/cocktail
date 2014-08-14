class Ingredient < ActiveRecord::Base
  validates :name, presence: true
  has_many :doses
  has_many :cocktails, through: :doses
end
