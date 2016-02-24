class Robot
  def initialize
    @compass = [:north, :east, :south, :west]
  end
  def orient(direction)
    unless @compass.include?(direction)
      return raise ArgumentError
    end
    @direction = direction
  end

  def bearing
    @direction
  end

  def index_dir
    @compass.find.with_index do |dir, index|
      return index if dir == @direction
    end
  end

  def turn_right
    index = index_dir
    @compass.rotate!(1)
    @direction = @compass[index]
  end

  def turn_left
    index = index_dir
    @compass.rotate!(-1)
    @direction = @compass[index]
  end

  def at(x,y)
    @x = x
    @y = y
  end

  def coordinates
    [@x, @y]
  end

  def advance
    @x += 1 if @direction == :east
    @x -= 1 if @direction == :west
    @y += 1 if @direction == :north
    @y -= 1 if @direction == :south
  end

end

class Simulator


  def instructions(direction)
    dir_arr = direction.split('')
    dir_arr.map do |dir|
      if dir == "L"
        :turn_left
      elsif dir == "R"
        :turn_right
      elsif dir == "A"
        :advance
      end
    end
  end

  def place(robot, direction)
    @x = direction[:x]
    @y = direction[:y]
    @direction = direction[:direction]
    robot.orient(@direction)
    robot.at(@x,@y)
  end

  def evaluate(robot, instructions)
    dir_arr = instructions(instructions)
    dir_arr.each do |x|
      if x == :turn_right
        robot.turn_right
      elsif x == :turn_left
        robot.turn_left
      elsif x == :advance
        robot.advance
      end
    end
  end

end
