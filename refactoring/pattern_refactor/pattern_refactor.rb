class Engine
  def core_weight
    250
  end

  def propeller_weight
    50
  end

  def weight
    core_weight + propeller_weight
  end

end

class Plane
  attr_reader :engine

  def initialize
    @engine = Engine.new
  end

  def body_weight
    1000
  end

  def engine_count
    2
  end

  def weight
    body_weight +
    engine_count * engine.weight
  end
end

dusty = Plane.new
dusty.weight
