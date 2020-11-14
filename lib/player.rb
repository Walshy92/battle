class Player

  HEALTH = 100
  attr_reader :name, :health

  def initialize(name, health = HEALTH)
    @name = name
    @health = health
  end

  def deal_damage
    @health -= 10
  end
end
