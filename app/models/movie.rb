class Movie < ActiveRecord::Base
	scope :rating, -> { where(rating: 4)}
	# Movie.skip_callback :before_save , :after_save
	before_save :before_action
	after_save :after_action
	before_create :capital_name
	
	before_destroy { logger.info "frinds Bye Bye!!!"}
	# attr_accessible :movie_ids
	has_and_belongs_to_many :actors
	has_many :trailers, dependent: :destroy
	has_one :picture, as: :imageable

	has_many :albums, dependent: :destroy
	has_many :photos , through: :albums, dependent: :destroy

	validates :picture,presence:false
	validates :name,presence:true
	private
	  def capital_name
	    self.name = name.capitalize unless name.blank?
	  end

	  def before_action
	  	puts "*************before save************"
	  end

	  def after_action
	  	puts "********after save*********"
	  end

	  def around_action
	  	puts "*********around action********"
	  end
      around_save do |activity, block|
            puts 'before save'
           block.call
          puts 'after save'
      end

      def self.search(query)
        where("name like ?", "%#{query}%") 
        # where("name like '%#{query}%'")
      end

end
 
