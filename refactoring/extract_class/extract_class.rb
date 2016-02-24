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
