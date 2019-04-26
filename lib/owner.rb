require 'pry'
class Owner

  attr_accessor :name, :pets
  attr_reader :species

  @@all = []

  def initialize(species)
     @species = species
     @name = name
     @@all << self
     @pets = {fishes: [], dogs: [], cats: []}
  end

  #Class methods
  def self.all
    @@all
  end

  def self.count
    @@all.count  # returns the number of owners that have been created
  end

  def self.reset_all
      @@all.clear #can reset the owners that have been created (FAILED - 3)
  end

#Instance Methos

def say_species
  "I am a #{self.species}."
end

# Owner instance methods #name can have a name
  #
  # def name=(name)
  #   @name = name
  # end



  def buy_fish(fish)
  	@pets[:fishes] << Fish.new(fish)
  end

  def buy_cat(cat)
@pets[:cats] << Cat.new(cat)
  end

  def buy_dog(dog)
@pets[:dogs] << Dog.new(dog)
  end

  def walk_dogs
    @pets[:dogs].each do |dog|
      dog.mood = "happy"
    end
  end

  def play_with_cats
    @pets[:cats].each do |cat|
      cat.mood = "happy"
    end
  end

  def feed_fish
    @pets[:fishes].each do |fish|
      fish.mood = "happy"
    end
  end

  def sell_pets
    pets.each do |species, animals|
      # binding.pry
      animals.each do |animal|
          animal.mood = "nervous"
        end
    end
    pets.clear
  end

  def list_pets
    "I have #{pets[:fishes].count} fish, #{pets[:dogs].count} dog(s), and #{pets[:cats].count} cat(s)."
  end


end
