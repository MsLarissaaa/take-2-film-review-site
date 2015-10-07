class FilmsController < ApplicationController
  # include ApplicationHelper

  # before_filter :authorize, :only => [:create, :new]

  def index
    @films = Film.all.sort_by{ |film| film.release_date }.reverse
    rows = @films.length / 4
    @film_slices = Array.new(rows) {@films.shift(4)}

    @drama = Genre.find_by_title("drama")
    @comedy = Genre.find_by_title("comedy")
    @action = Genre.find_by_title("action")
    @scifi = Genre.find_by_title("sci-fi & fantasy")
    @historical = Genre.find_by_title("historical drama")
    @documentary = Genre.find_by_title("documentary")
    @biopic = Genre.find_by_title("biopic")
    @childrens = Genre.find_by_title("children's")

    @drama_slices = Genre.make_slices(@drama)
    @comedy_slices = Genre.make_slices(@comedy)
    @action_slices = Genre.make_slices(@action)
    @scifi_slices = Genre.make_slices(@scifi)
    @historical_slices = Genre.make_slices(@historical)
    @documentary_slices = Genre.make_slices(@documentary)
    @biopic_slices = Genre.make_slices(@biopic)
    @childrens_slices = Genre.make_slices(@childrens)

    films = Film.all
    @best_films = films.sort_by{ |film| Film.approval_rating(film.title) }.reverse
    rows = @best_films.length / 4
    @best_slices = Array.new(rows) {@best_films.shift(4)}
  end

  def show
    @film = Film.find(params[:id])
  end
end