class Cocktail < ApplicationRecord
  has_many :doses
  has_many :ingredients, through: :doses
  validates :name, uniqueness: true, presence: true
  # attention le dernier validates n'était pas fait dans le master code
  # When you delete a cocktail, you should delete associated doses
  #(but not the ingredients as they can be linked to other cocktails).
end
