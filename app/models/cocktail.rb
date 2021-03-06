class Cocktail < ActiveRecord::Base
  validates :name, presence: true
  has_many :doses
  has_many :ingredients, through: :doses

  has_attached_file :picture,
  styles: { medium: "300x300>", thumb: "100x100>" }

  validates_attachment_content_type :picture,
  content_type: /\Aimage\/.*\z/


end
