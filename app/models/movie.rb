class Movie < ActiveRecord::Base
	# attr_accessible :movie_ids
	has_and_belongs_to_many :actors
	has_many :trailers
end
