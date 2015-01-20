class Movie < ActiveRecord::Base
	# attr_accessible :movie_ids
	has_and_belongs_to_many :actors
	has_many :trailers
	has_one :picture, as: :imageable

	has_many :albums
	has_many :photos , through: :albums

	validates :picture,presence:false
end
