class Album < ActiveRecord::Base
	belongs_to :photo
	belongs_to :movie
end
