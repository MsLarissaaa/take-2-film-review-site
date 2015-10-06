class FilmsController < ApplicationController
  # include ApplicationHelper

  # before_filter :authorize, :only => [:create, :new]

  def index
    @films = Film.all.sort_by{ |film| film.release_date }.reverse
    rows = @films.length / 4
    @film_slices = Array.new(rows) {@films.shift(4)}
  end

  def show
    @film = Film.find(params[:id])
  end
end