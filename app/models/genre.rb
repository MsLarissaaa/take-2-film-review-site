class Genre < ActiveRecord::Base
  has_many :film_genres
  has_many :films, through: :film_genres
end
