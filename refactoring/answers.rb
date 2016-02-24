class Engine
  def core_weight
    250
  end

  def propeller_weight
    50
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
    engine_count * (engine.core_weight + engine.propeller_weight)
  end
end


##############################################
########## ONE ###############################

class Plane
  attr_reader :engine

  def engine_weight
    250
  end

  def propeller_weight
    50
  end

  def body_weight
    1000
  end

  def engine_count
    2
  end

  def weight
    body_weight +
    engine_count * (engine_weight + propeller_weight)
  end
end

######################################################
############# TWO ###################################
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
    body_weight + (engine_count * engine.weight)
  end
end


###################################
########## THREE ##################

class Engine
  def core_weight
    250
  end

  def propeller_weight
    50
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
    engine_count * (engine.core_weight + engine.propeller_weight)
  end
end

dusty = Plane.new
dusty.weight










################### STATION TWO ###################

class Plane
  attr_reader :engine_1_running, :engine_2_running,
              :engine_3_running, :engine_4_running

  def initialize
    @engine_1_running = false
    @engine_2_running = false
    @engine_3_running = false
    @engine_4_running = false
  end

  def start
    @engine_1_running = true
    @engine_2_running = true
    @engine_3_running = true
    @engine_4_running = true
  end

end

dusty = Plane.new
dusty.start

############## ITER 1 #############

class Engine
  attr_reader :running
  def initialize
    @running = false
  end

  def start
    @running = true
  end
end

class EngineBank
  def initialize(engine_count)
    @engines = engine_count.times.map do
      Engine.new
    end
  end
end

class Plane
  # attr_accessor :engine_1
  # def engine_1
  #   @engine_1
  # end

  def initialize(engine_count = 4)
    @engines = EngineBank.new(engine_count)
  end

  def engine_1
    @engines[0]
  end

  def start
    @engines.each do |e|
      e.start
    end
  end
end

###################################
###################################
###################################
###################################
##### STATION 3 ###################

class Plane
  attr_reader :engines

  def initialize
    @engines = Array.new(4){ Engine.new }
  end

  def start
    engines.each do |e|
      e.prime_pump
      e.ignite!
    end
  end
end

class Engine
  def start
    @running = true
  end

  def running?
    !!@running
  end
end

### THIS CODE USING PLANE
# Actually knows a lot about the internals
# of plane
dusty = Plane.new
dusty.start

dusty.do_stuff
