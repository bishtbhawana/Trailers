class Actor < ActiveRecord::Base
	has_and_belongs_to_many :movies
	# has_one :picture, as: :imageable
end




# class Actor
#  include ActiveModel::Model
#  include ActiveModel::AttributeMethods
#  # has_and_belongs_to_many :movies
#   attribute_method_prefix 'reset_'
#   attribute_method_suffix '_highest?'
#   define_attribute_methods 'age'
 
#   attr_accessor :age
 
#   private
#     def reset_attribute(attribute)
#       send("#{attribute}=", 0)
#     end
 
#     def attribute_highest?(attribute)
#       send(attribute) > 100
#     end
# end



# class Actor 
#   include ActiveModel::Conversion
#  attr_accessor :id,:age, :name
#   def persisted?
#   	true
#   end
  
    
#   end
  



# class Actor
#   include ActiveModel::Dirty
#   define_attribute_methods :name
 
#   def name
#     @name
#   end
 
#   def name=(value)
#     name_will_change!
#     @name = value
#   end
 
  
 
#   def save
#     # do save work...
#     changes_applied
#   end
# end


# class Actor
#   include ActiveModel::Serializers::JSON
 
#   attr_accessor :name
#   def attributes=(hash)
#     hash.each do |key, value|
#       send("#{key}=", value)
#     end
#   end
 
#   def attributes
#     {'name' => nil}
#   end
# end


# class Actor
# 	include ActiveModel::Serializers::Xml
# 	attr_accessor :name
# 	def attributes=(hash)
# 		hash.each do |key, value|
# 			send("#{key}=",value)
# 		end
# 	end
# 	def attributes
# 		{'name' => nil}
# 	end
# end
