class TrailersController < ApplicationController
  before_action :set_trailer, only: [:show, :edit, :update, :destroy]

  # GET /trailers
  # GET /trailers.json
  def index
    @trailers = Trailer.all
  end

  # GET /trailers/1
  # GET /trailers/1.json
  def show
  end

  # GET /trailers/new
  def new
    @trailer = Trailer.new
    # @movie =  Movie.all
  end

  # GET /trailers/1/edit
  def edit
  end

  # POST /trailers
  # POST /trailers.json
  def create
    # raise params[:movie][:movie_id].inspect
     @trailer = Trailer.new(trailer_params)
     @trailer.movie_id = params[:movie][:movie_id]
    respond_to do |format|
      if @trailer.save
        format.html { redirect_to @trailer, notice: 'Trailer was successfully created.' }
        format.json { render :show, status: :created, location: @trailer }
      else
        format.html { render :new }
        format.json { render json: @trailer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /trailers/1
  # PATCH/PUT /trailers/1.json
  def update
    respond_to do |format|
      if @trailer.update(trailer_params)
        format.html { redirect_to @trailer, notice: 'Trailer was successfully updated.' }
        format.json { render :show, status: :ok, location: @trailer }
      else
        format.html { render :edit }
        format.json { render json: @trailer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /trailers/1
  # DELETE /trailers/1.json
  def destroy
    @trailer.destroy
    respond_to do |format|
      format.html { redirect_to trailers_url, notice: 'Trailer was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_trailer
      @trailer = Trailer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def trailer_params
      params.require(:trailer).permit(:video_url, :views)
    end
end
