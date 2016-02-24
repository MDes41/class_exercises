module Pythagorean
  def self.find_c(a,b)
    Math.sqrt((a ** 2) + (b ** 2))
  end

  def self.find_a(c,b)
    Math.sqrt((c ** 2) - (b ** 2))
  end

  def self.find_b(c,a)
    Math.sqrt((c ** 2) - (a ** 2))
  end
end

module Thing
  def self.stars(string)
    "** #{string} **"
  end
end

puts "c: #{Pythagorean.find_c(3,4)}"
puts "a: #{Pythagorean.find_c(5,3)}"
puts "b: #{Pythagorean.find_c(5,4)}"

module BasicSpell
  def accio(thing)
    puts "You got #{thing}"
  end
end

class BrokenWand
  include BasicSpell

  def powerful_spell
    puts "You just broke your wand"
  end

end

class ElderWand
  include BasicSpell

  def poweerful_spell
    puts "BANG"
  end
end

broken = BrokenWand.new
broken.accio("Pizza")
