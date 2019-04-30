class Cat

  attr_accessor :mood
  attr_reader :name

  def initialize(name, mood = 'nervous')
    @name = name
    @mood = mood
  end

end

# can initialize a cat
# initializes with a name
# can't change its name
# initializes with a nervous mood
# can change its mood
#
# Dog
# can initialize a dog
# initializes with a name
# can't change its name
# initializes with a nervous mood
# can change its mood
#
# Fish
# can initialize a fish
# initializes with a name
# can't change its name
# initializes with a nervous mood
# can change its mood
#
# Owner
# Class methods
#   ::all returns all instances of Owner that have been created
#   ::count returns the number of owners that have been created
#   ::reset_all can reset the owners that have been created
# Instance methods
#   #species
#     initializes with a species
#     can't change its species
#   #say_species
#     can say its species
#   #name
#     can have a name
#   #pets
#     is initialized with a pets attribute as a hash with 3 keys
#   #buy_fish
#     can buy a fish that is an instance of the Fish class
#     knows about its fishes
#   #buy_cat
#     can buy a cat that is an instance of the Cat class
#     knows about its cats
#   #buy_dog
#     can buy a dog that is an instance of the Dog class
#     knows about its dogs
#   #walk_dogs
#     walks the dogs which makes the dogs' moods happy
#   #play_with_cats
#     plays with the cats which makes the cats moods happy
#   #feed_fish
#     feeds the fishes which makes the fishes' moods happy
#   #sell_pets
#     can sell all its pets, which make them nervous
#   #list_pets
#     can list off its pets
