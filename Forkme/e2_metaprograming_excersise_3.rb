class Singleton_class

end

animal=Singleton_class.new

def animal.speak
	puts "Dog says woof!"
end

animal.speak