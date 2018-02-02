class Pirate
  attr_accessor :name, :weight, :height

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end


end
