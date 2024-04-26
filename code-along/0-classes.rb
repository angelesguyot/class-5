# This is a Rails app and we want to load all the files in the app 
# when running this code.  To do so, your current working directory
# should be the top-level directory (i.e. /workspace/your-app/) and then run:
# rails runner code-along/0-classes.rb

# String Class
favourite_food = "tacos"
puts favourite_food

puts favourite_food.class
puts favourite_food.upcase


# String Methods

class Dog
    def speak
        puts "Woof!"

    end
    end
lucy = Dog.new
lucy.speak