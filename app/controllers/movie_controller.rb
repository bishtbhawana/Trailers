class MovieController < ApplicationController
  def index
  	@movies = Movie.all
  end

  def show
  	@movie = Movie.find(params[:id])
  end

  def new
  	@movie = Movie.new
  end

  def create
    raise movie_params.inspect
  	@movie = Movie.new(movie_params)
  	if @movie.save
  		redirect_to(:action => 'index')
  	else
  		render 'new'
  	end
  end
  def edit
  	@movie = Movie.find(params[:id])

  end
  def update
  	@movie = Movie.find(params[:id])
  	if @movie.update_attributes(movie_params)
  		redirect_to(:action => 'show' , :id => @movie.id)
  	else
  		render 'edit'
  	end
  end
  def delete
  	@movie = Movie.find(params[:id])
  end

  def destroy
  	movie = Movie.find(params[:id])
  	movie.destroy
  	redirect_to(:action => 'index')
  end

  private 
   def movie_params
   	params.require(:movie).permit(:name,:release_date,:rating, :actor_ids)
   end
end
