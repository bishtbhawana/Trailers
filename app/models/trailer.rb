class Trailer < ActiveRecord::Base
	belongs_to :movie
   after_destroy :log_destroy_action
    def log_destroy_action
    puts '*****************Trailers destroyed*****************************************************************'
  end

 end
