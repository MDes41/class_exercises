class Plane
  attr_reader :engines

  def initialize
    @engines = Array.new(4){ Engine.new }
  end

  def start
    engines.map { |engine| engine.start }
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

dusty = Plane.new
puts dusty.engines.map(&:running?)
dusty.start
# dusty.engines.each{|e| e.start}
puts dusty.engines.map(&:running?)
