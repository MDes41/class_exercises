module And
  class Double
    attr_accessor :input_a, :input_b

    def output
      if input_a == 1
        if input_b == 1
          1
        else
          0
        end
      else
        0
      end
    end
  end

  class Multi
    # Multi new (5) a,b,c,d,e
    attr_reader :inputs
    def initialize(count)
      alphabet = ("a".."z").to_a
      input_letters = alphabet.take(count)
      # when i make a multi gate
      # need to dynamically define the
      # setters and getters for that number
      # of inputs

      # "global namespace pollution" problem
      input_letters.each do |l|
        self.singleton_class.attr_accessor("input_#{l}")
      end

      @inputs = {}
      # {:a => 0, :b => 1}
    end

    def set_input(position, value)
      @inputs[position] = value
    end

    def get_input(position)
      @inputs[position]
    end

    def output
      inputs.values.reduce(1) do |out, input|
        g = Double.new
        g.input_a = out
        g.input_b = input
        g.output
      end
    end
  end
end

g = And::Double.new
g.input_a = 1
g.input_b = 1
puts g.output

g.input_b = 0

puts g.output


g = And::Multi.new(5)
g.set_input(:a, 1)
g.set_input(:b, 1)
g.set_input(:c, 1)
g.set_input(:d, 0)
g.set_input(:e, 1)

puts "******** woooo"
puts g.output
