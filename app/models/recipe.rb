class Recipe < ActiveRecord::Base
  belongs_to :user

  has_many :amounts
  has_many :ingredients, through: :amounts

  has_many :favorites
  has_many :favorite_users, through: :favorites, source: :user

end
