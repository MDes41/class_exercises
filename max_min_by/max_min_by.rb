one_direction = [["Niall", 22], ["Liam", 22], ["Harry", 22], ["Louis", 24], ["Zayn", 23]]

result = one_direction.max_by do |member|
  member.last
end

puts "#{result.first} is the oldest member of the group with an age of #{result.last}"

result = one_direction.min_by do |member|
  member.first
end

puts "#{result.first} is the first alphabetical"
