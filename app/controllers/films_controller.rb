class FilmsController < ApplicationController
  # include ApplicationHelper

  # before_filter :authorize, :only => [:create, :new]

  def index
    @film_slices = Film.film_slices

    @drama_slices = Genre.retrieve_slices("drama")
    @comedy_slices = Genre.retrieve_slices("comedy")
    @action_slices = Genre.retrieve_slices("action")
    @scifi_slices = Genre.retrieve_slices("sci-fi & fantasy")
    @historical_slices = Genre.retrieve_slices("historical drama")
    @documentary_slices = Genre.retrieve_slices("documentary")
    @biopic_slices = Genre.retrieve_slices("biopic")
    @childrens_slices = Genre.retrieve_slices("children's")

    @best_slices = Film.best_slices

  end

  def show
    @film = Film.find(params[:id])
  end

end