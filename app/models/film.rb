class Film < ActiveRecord::Base
  has_many :reviews
  has_many :film_genres
  has_many :genres, through: :film_genres
  has_many :ratings, as: :rateable
end
