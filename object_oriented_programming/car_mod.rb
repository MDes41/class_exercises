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
