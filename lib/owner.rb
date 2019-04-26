require 'pry'

class Owner
  # code goes here

  attr_accessor :pets, :name
  attr_reader :species

  @@all = []

  def initialize(species)
    @species = species
    @pets = {fishes: [], cats: [], dogs: []}
    @@all << self
  end

  def self.all
    @@all
  end

  def self.count
    @@all.count
  end

  def self.reset_all
    @@all.clear
  end

  def say_species
    "I am a #{species}."
  end

  def buy_fish(fish)
    more_fishes = Fish.new(fish)
    @pets[:fishes] << more_fishes
    @pets[:fishes].count + 1
  end

  def buy_cat(cat)
    more_cats = Cat.new(cat)
    @pets[:cats] << more_cats
  end

  def buy_dog(dog)
    more_dogs = Dog.new(dog)
    @pets[:dogs] << more_dogs
  end

  def walk_dogs
    @pets[:dogs].map do |dog|
      dog.mood = 'happy'
    end
  end

  def play_with_cats
    @pets[:cats].map do |cat|
      cat.mood = 'happy'
    end
  end

  def feed_fish
    @pets[:fishes].map do |fish|
      fish.mood = 'happy'
    end
  end

  def sell_pets
    @pets.map do |species, animals|
      animals.map do |animals|
        animals.mood = 'nervous'
      end
    end
    pets.clear
  end

  def list_pets
    "I have #{@pets[:fishes].count} fish, #{@pets[:dogs].count} dog(s), and #{@pets[:cats].count} cat(s)."
  end

end
