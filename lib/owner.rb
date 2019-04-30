require 'pry'

class Owner
  # code goes here
  @@count = 0
  @@all = []
  attr_reader :species
  attr_accessor :name, :mood,  :pets

  def initialize(species)
    @species = species
    @@all << self
    @@count += 1
    @pets = {:fishes=> [], :dogs=>[], :cats=>[]}
  end

  def self.all
    @@all
  end

  def self.count
    @@count
  end
  def self.reset_all
    @@count= 0
  end

  def species
    @species
  end

  def mood
    @mood
  end

  def say_species
    return "I am a #{@species}."
  end

  def buy_fish(name)
    # binding.pry
      @pets[:fishes] << Fish.new(name)
  end

  def buy_cat(name)
    @pets[:cats] <<Cat.new(name)
  end

  def buy_dog(name)
    @pets[:dogs] << Dog.new(name)
  end

  def walk_dogs
    # binding.pry
    # @dog.mood = "happy"
    @pets[:dogs].each do |dog|
      dog.mood = "happy"
    end
  end

  def play_with_cats
    @pets[:cats].collect do |cat|
    cat.mood = "happy"
  end
  end

def feed_fish
  @pets[:fishes].map do |fish|
    fish.mood = "happy"
  end
end

  def sell_pets
    @pets[:fishes].map! do |fish|
      fish.mood = "nervous"
      # binding.pry
      # @pets[:fishes].clear
    @pets[:cats].map do |cat|
      cat.mood = "nervous"
      # @pets[:cats].clear
    @pets[:dogs].map do |dog|
      dog.mood = "nervous"
      # @pets[:dogs].clear
    end

    # binding.pry
  end
end
@pets.clear
  end

  def list_pets
    puts
    @pets
  end

  def list_pets
    "I have #{@pets[:fishes].count} fish, #{@pets[:dogs].count} dog(s), and #{@pets[:cats].count} cat(s)."
  end
end
