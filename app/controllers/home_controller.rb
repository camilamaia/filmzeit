class HomeController < ApplicationController
  def index
    @film = Film.offset(rand(Film.count)).first
  end
end
