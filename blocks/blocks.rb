def internally_screaming
  people = ["Taylor Swift", "Carly Rae Jeppsen",
  "Zara Larssen"]

  people.map do |person|
    person.upcase
  end

end


def internally_screaming1
  numbers = [1,2,3,4,5,6]

  numbers.map do |num|
    num if num.even?
  end
end

def internally_screaming2
  numbers = [1,2,3,4,5,6]

  numbers.each do |num|
    num if num.even?
  end
end

def internally_screaming3
  numbers = [1,2,3,4,5,6]

  numbers.detect do |num|
    "hello"
  end
end

def thing
  words = ["cat", "dog", "puppy", "tree", "caterpillar"]

  words.find do |word|
    word.length > 3
  end
end

def numbers
  number = [34, 42, 50, 55, 893457890453]

  number.find do |number|
    number > 50
  end
end

def numbers2
  number = [34, 42, 50, 55, 893457890453]

  number.find_all do |number|
    number > 40
  end

end

puts numbers2
