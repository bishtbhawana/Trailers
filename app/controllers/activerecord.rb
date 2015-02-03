class Person 
	include ActiveModel::AttributeMethods
	attribute_method_prefix 'reset_'
	attribute_method_suffix '_highest?'
	define_attribute_methods 'age'

	attr_accessor :age
	private
	def reset_attribute(attribute)
		send("#{attribute}=",0)
	end 
	def attribute_highest?(attribute)
		send(attribute) > 100
	end
end
person = Person.new
person.age = 110
person.age_highest?
person.reset_age
person.age_highest?