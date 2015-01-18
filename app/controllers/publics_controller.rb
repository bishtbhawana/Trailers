class PublicsController < ApplicationController
  # before_action :set_public, only: [:show, :edit, :update, :destroy]

  # GET /publics
  # GET /publics.json
  def index
    # raise @movies.inspect
    @movies= Movie.order(:release_date).reverse
    
  end

  
end
