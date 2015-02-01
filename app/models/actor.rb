class Actor < ActiveRecord::Base
	has_and_belongs_to_many :movies
	has_one :picture, as: :imageable
end