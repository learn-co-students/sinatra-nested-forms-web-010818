class Ship

  @@SHIPS = []

  attr_accessor :name, :type, :booty

  def initialize(args)
    @name = args[:name]
    @type = args[:type]
    @booty = args[:booty]

    @@SHIPS << self
  end

  def self.all
    @@SHIPS
  end

  def self.clear
    @@SHIPS = []
  end





end
