class Genre < ActiveRecord::Base
  has_many :film_genres
  has_many :films, through: :film_genres

  def self.make_slices(genre)
    sorted_movies = genre.films.sort_by{ |film| film.release_date }.reverse
    rows = (sorted_movies.length == 4 ? 1 : sorted_movies.length % 4)
    Array.new(rows) {sorted_movies.shift(4)}
  end
end
