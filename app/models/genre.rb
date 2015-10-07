class Genre < ActiveRecord::Base
  has_many :film_genres
  has_many :films, through: :film_genres

  def self.make_slices(genre)
    # USE ACTIVE RECORD TO ITS STRENGTHS!
    # sorted_movies = genre.films.order("release_date desc")

    sorted_movies = genre.films.sort_by{ |film| film.release_date }.reverse

    # shouldn't this be rows = (sorted_movies.length % 4) + 1 ????
    # if it's 5 you want 2 rows, right? 5%4 = 1 not 2
    rows = (sorted_movies.length == 4 ? 1 : sorted_movies.length % 4)
    Array.new(rows) {sorted_movies.shift(4)}
  end
end
