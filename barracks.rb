class Barracks
  attr_accessor :gold, :food
  
  def initialize(gold = 1000, food = 80)
    @gold = gold
    @food = food
  end
  
  def can_train_footman?
    gold >= 135 && food >= 2
  end

  def train_footman
    return nil unless can_train_footman?
    @gold -= 135
    @food -= 5
    Footman.new
  end

  def can_train_peasant?
    gold >= 90 && food >= 5
  end

  def train_peasant
    return nil unless can_train_peasant?
    @gold -= 90
    @food -= 5
    Peasant.new
  end

end