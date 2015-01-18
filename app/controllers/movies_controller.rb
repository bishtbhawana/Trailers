class MoviesController < ApplicationController
  before_action :set_movie, only: [:show, :edit, :update, :destroy]

  # GET /movies
  # GET /movies.json
  def index
    @movies = Movie.all
  end

  # GET /movies/1
  # GET /movies/1.json
  def show
  end

  # GET /movies/new
  def new
    @movie = Movie.new
  end

  # GET /movies/1/edit
  def edit
  end

  # POST /movies
  # POST /movies.json
  def create
    # raise params[:movie][:actor_ids].inspect
    actors = Actor.find params[:movie][:actor_ids].reject! { |c| c.empty? }

    @movie = Movie.new(movie_params)
    @movie.actors = actors
    @movie.picture = self.upload_photo

    respond_to do |format|
      if @movie.save
        format.html { redirect_to @movie, notice: 'Movie was successfully created.' }
        format.json { render :show, status: :created, location: @movie }
      else
        format.html { render :new }
        format.json { render json: @movie.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /movies/1
  # PATCH/PUT /movies/1.json
  def update
    respond_to do |format|
      actors = Actor.find params[:movie][:actor_ids].reject! { |c| c.empty? }

      @movie.actors = actors

      data = movie_params
      data[:picture] = self.upload_photo


      if @movie.update(data)
        format.html { redirect_to @movie, notice: 'Movie was successfully updated.' }
        format.json { render :show, status: :ok, location: @movie }
      else
        format.html { render :edit }
        format.json { render json: @movie.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /movies/1
  # DELETE /movies/1.json
  def destroy
    @movie.destroy
    respond_to do |format|
      format.html { redirect_to movies_url, notice: 'Movie was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_movie
      @movie = Movie.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def movie_params
      params.require(:movie).permit(:name, :release_date, :rating, :actor_ids)
    end

  protected
    def upload_photo
      # raise params[:picture].inspect
      upload_io = params[:picture]

      File.open( Rails.root.join('public', 'uploads', upload_io.original_filename), 'wb' ) do |file|
        file.write(upload_io.read)
      end

      pic = Picture.new :name => upload_io.original_filename
    end


end
