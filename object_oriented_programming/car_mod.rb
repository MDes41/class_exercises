module AWD
  class Car
    def start
      puts "Engine on!"
    end

    def drive
      puts "All Wheels Go!"
    end
  end
end

module RWD
  class Car
    def start
      puts "Engine on!"
    end

    def drive
      puts "Rear Wheels go!"
    end
  end
end

awd = AWD::Car.new
awd.start
awd.drive
rwd = RWD::Car.new
rwd.start
rwd.drive


module HasEngine
  def start
    puts "Engine on!"
  end

  def stop
    puts "Engine off!"
  end
end

class Camry
  include HasEngine

  def drive
    puts "Back wheels go!"
  end
end

class Jeep
  include HasEngine

  def drive
    puts "All wheels go!"
  end
end

jeep = Jeep.new
jeep.start
jeep.stop
camry = Camry.new
camry.start
camry.stop
