class SuperHero

  attr_accessor :name, :power, :bio

  @@superheroes = []

  def initialize(params)
    @name = params[:name]
    @power = params[:power]
    @motto = params[:bio]
    @@superheroes << self
  end

  def self.all
    @@superheroes
  end
end
