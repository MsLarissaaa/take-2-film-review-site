class FilmsController < ApplicationController
  # include ApplicationHelper

  # before_filter :authorize, :only => [:create, :new]

  def index
    @films = Film.all
  end

  def show
    @film = Film.find(params[:id])
  end
end