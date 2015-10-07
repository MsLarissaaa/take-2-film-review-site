class Film < ActiveRecord::Base
  has_many :reviews
  has_many :film_genres
  has_many :genres, through: :film_genres
  has_many :ratings, as: :rateable

  def self.film_slices
    films = Film.all.sort_by{ |film| film.release_date }.reverse
    rows = films.length / 4
    Array.new(rows) {films.shift(4)}
  end

  def self.approval_rating(film_name)
    film = self.find_by_title(film_name)
    total = film.ratings.count
    good = film.ratings.find_all{ |rating| rating.content == "good" }
    return 0 if total == 0
    ((good.length.to_f / total) * 100).to_i
  end

  def self.rated(film_name)
    if self.find_by_title(film_name).ratings.empty?
      "This film has not yet been rated"
    elsif self.approval_rating(film_name) >= 60
      "Good"
    else
      "Bad"
    end
  end

  def self.best_slices
    films = self.all
    best_films = films.sort_by{ |film| Film.approval_rating(film.title) }.reverse
    rows = best_films.length / 4
    Array.new(rows) {best_films.shift(4)}
  end

  # def self.find_genres
  #   self.genres.map{|genre| genre.title}.join(", ")
  # end
end
