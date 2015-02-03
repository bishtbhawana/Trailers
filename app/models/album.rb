class Album < ActiveRecord::Base
	belongs_to :photo , dependent: :destroy
	belongs_to :movie
end
