module And
  attr_accessor :input_a, :input_b, :input_c, :input_d

  def all_1
    gates.all? do |gate|
      gate == 1
    end
  end

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
