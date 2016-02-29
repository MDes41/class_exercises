module And
  attr_accessor all_gates.map(&:to_s)  # ~> NameError: undefined local variable or method `all_gates' for And:Module

  def all_1
    gates.all? do |gate|
      gate == 1
    end
  end

  def attr_access
    all

  def all_gates
    a = ("a".."z").to_a
    a.map { |letter| "input_#{letter}"}
  end

  def output
    all_1 ? 1 : 0
  end

  class Double
    include And

    def gates
      all_gates[0,2]
    end
  end

  class Triple
  include And
    def gates
      all_gates[0,3]
    end

  end

  class Multi
  include And
  attr_reader :number_of_gates
    def initialize(number_of_gates)
      @number_of_gates = number_of_gates
    end

    def gates
      all_gates[0,number_of_gates]
    end
  end


end

gate = And::Double.new
gate.input_a = 1
gate.input_b = 1
gate.output
gate.input_b = 0
gate.output

gate = And::Triple.new
gate.input_a = 1
gate.input_b = 1
gate.output
gate.input_c = 1
gate.output
gate.input_a = 0
gate.output

gate = And::Multi.new(4)
gate.input_a = 1
gate.input_b = 1
gate.input_c = 1
gate.output
gate.input_d = 1
gate.output
gate.input_b = 0
gate.output

gate = And::Multi.new(2)
gate.input_a = 1
gate.input_b = 1
gate.output
gate.input_b = 0
gate.output

gate = And::Multi.new(3)
gate.input_a = 1
gate.input_b = 1
gate.output
gate.input_c = 1
gate.output
gate.input_a = 0
gate.output

# ~> NameError
# ~> undefined local variable or method `all_gates' for And:Module
# ~>
# ~> /Users/matt/Turing/1point5module/class_exercises/logic_gates/logic_gates_and.rb:2:in `<module:And>'
# ~> /Users/matt/Turing/1point5module/class_exercises/logic_gates/logic_gates_and.rb:1:in `<main>'
