one_direction = [["Niall", 22], ["Liam", 22], ["Harry", 22], ["Louis", 24], ["Zayn", 23]]

result = one_direction.max_by do |member|
  member.last
end

puts "#{result.first} is the oldest member of the group with an age of #{result.last}"

result = one_direction.min_by do |member|
  member.first
end

puts "#{result.first} is the first alphabetical"

puts one_direction.sort_by { |member| member[1] }.reverse.inspect

#all?

array = [1,1,3,1,1]

# def all?(array)
#   result = true
#   array.each do |item|
#     result = false if item != 1
#   end
#   result
# end

x = array.all? do |item|
  item == 1 || item == 3
end

y = array.none? do |item|
  item == 2 || item == 3
end

w = array.any? do |animal|
  animal == 3
end

q = array.one? do |animal|
  animal == 1
end


puts x
puts y


musicians = [ "Kacey Musgrove",
              "Florida Georgia Line",
              "Rascal Flatts",
              "Sugarland"
            ]

# index = 0
#
# musicians.each do |musician|
#   puts "#{index} - #{musician}"
#   index += 1
# end

musicians.each_with_index do |musician, index|
  puts "#{index} - #{musician}"
end
