class Movie < ActiveRecord::Base
	# attr_accessible :movie_ids
	has_and_belongs_to_many :actors
	has_many :trailers
	has_one :picture, as: :imageable, dependent: :destroy

	has_many :albums, dependent: :destroy
	has_many :photos , through: :albums, dependent: :destroy

	validates :picture,presence:false
end
 