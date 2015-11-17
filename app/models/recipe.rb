class Recipe < ActiveRecord::Base
  has_many :amounts
  has_many :ingredients, through: :amounts

  has_many :favorites
  has_many :users, through: :favorites
end
