class MainFrameController < ApplicationController
  helper_method :x

  def index
  	@film = Film.offset(rand(Film.count)).first
  end
end
