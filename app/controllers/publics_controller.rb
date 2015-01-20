class PublicsController < ApplicationController
  # before_action :set_public, only: [:show, :edit, :update, :destroy]

  # GET /publics
  # GET /publics.json
  helper YoutubeHelper
  def index
    # raise @movies.inspect
    @movies= Movie.order(:release_date).reverse
    
  end

  def subscribe
    # raise subscribe_params.inspect
     subscriber = Subscription.new(subscribe_params)
     subscriber.save
  end
 private 
   def subscribe_params
      params.permit(:email)
   end
  
end
