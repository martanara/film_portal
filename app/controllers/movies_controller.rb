class MoviesController < ApplicationController
  def index
    @movies = Movie.all
  end

  def create
    @movie = Movie.new(movie_params)

    @movie.save
    redirect_to @movie
  end

  def show
    @movie = Movie.find(params[:id])
  end

  def new; end

  private
    def movie_params
      params.require(:movie).permit(:title, :directed_by, :written_by, :release_date, :length, :genre, :country, :description)
    end
end
