class GenresController < ApplicationController
  
  def index
    @title = "Genres"
    @genres = Genre.all
    @genre = Genre.new
  end
  
  def create
    @genre = Genre.new(genre_params)

    if @genre.save
      redirect_to genres_path
    else
      render :new, alert: "Genre was not saved"
    end
  end
  
  def destroy
    @genre = Genre.find_by_id(params[:id])
    if @genre
      @genre.destroy
    end
    redirect_to genres_path
  end
  
  def genre_params
    params.require(:genre).permit(:name)
  end
end
