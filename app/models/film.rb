class Film < ActiveRecord::Base
  has_many :reviews
  has_many :film_genres
  has_many :genres, through: :film_genres
  has_many :ratings, as: :rateable

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
end
