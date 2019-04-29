class Owner
  # code goes here
  @@count = 0
  ALL = []
  attr_reader :name
  attr_accessor :mood
  
  def initialize(species)
    @species = species
    ALL << self
    @@count += 1
  end
    
  def species
    
  end
  
  def self.all
    ALL
  end
  
  def self.count
    @@count
  end
  
end