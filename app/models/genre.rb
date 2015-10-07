class Genre < ActiveRecord::Base
  has_many :film_genres
  has_many :films, through: :film_genres

  def self.retrieve_slices(genre)
    genre_type = Genre.find_by_title(genre)
    sorted_movies = genre_type.films.sort_by{ |film| film.release_date }.reverse
    rows = (sorted_movies.length == 4 ? 1 : sorted_movies.length % 4)
    slices = Array.new(rows) {sorted_movies.shift(4)}
    Hash[genre, slices]
  end
end
