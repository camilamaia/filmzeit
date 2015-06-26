class FilmsController < ApplicationController

  def index
    @films = Film.all
  end

  def show
    @film = Film.find(params[:id])
  end

  def new
    @film = Film.new
  end

  def edit
    @film = Film.find(params[:id])
  end

  def create
    @film = Film.new(film_params)

    @film.save ? redirect_to(@film) : render('new')
  end

  def update
    @film = Film.find(params[:id])

    @film.update(film_params) ? redirect_to(@film) : render('edit')
  end

  def destroy
    @film = Film.find(params[:id])
    @film.destroy

    redirect_to films_path
  end

  private

  def film_params
    params.require(:film).permit(:title, :plot, :imdb_rating, :runtime)
  end

end
