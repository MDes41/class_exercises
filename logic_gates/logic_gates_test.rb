module Or
  attr_accessor :input_a, :input_b, :input_c, :input_d  # => nil

  def any_1
    gates.any? do |gate|  # => [1, 0], [0, 0]
      gate == 1           # => true, false, false
    end                   # => true, false
  end

  def all_gates
    [input_a, input_b, input_c, input_d]  # => [1, 0, nil, nil], [0, 0, nil, nil]
  end

  def output
    any_1 ? 1 : 0  # => 1, 0
  end
end

  class Or::Double
    include Or        # => Or::Double
    def gates
      all_gates[0,2]  # => [1, 0], [0, 0]
    end
  end

  class Or::Triple
    include Or        # => Triple
    def gates
      all_gates[0,3]
    end
  end

  class Or::Multi
    include Or                    # => Multi
    attr_reader :number_of_gates  # => nil
   
    def initialize(number_of_gates)
      @number_of_gates = number_of_gates
    end

    def gates
      all_gates[0, number_of_gates]
    end

  end

gate = Or::Double.new  # => #<Or::Double:0x007f8ed414a068>
gate.input_a = 1       # => 1
gate.input_b = 0       # => 0
gate.output            # => 1
gate.input_a = 0       # => 0
gate.output            # => 0

gate = Or::Triple.new  # ~> NameError: uninitialized constant Or::Triple
gate.input_a = 0
gate.input_b = 0
gate.output
gate.input_c = 1
gate.output
gate.input_c = 0
gate.output

gate = Or::Multi.new(4)
gate.input_a = 0
gate.input_b = 0
gate.input_c = 0
gate.output
gate.input_d = 1
gate.output
gate.input_d = 0
gate.output

gate = Or::Multi.new(2)
gate.input_a = 1
gate.input_b = 0
gate.output
gate.input_a = 0
gate.output

gate = Or::Multi.new(3)
gate.input_a = 0
gate.input_b = 0
gate.output
gate.input_c = 1
gate.output
gate.input_c = 0
gate.output

# ~> NameError
# ~> uninitialized constant Or::Triple
# ~>
# ~> /Users/matt/Turing/1point5module/class_exercises/logic_gates/logic_gates_test.rb:54:in `<main>'
