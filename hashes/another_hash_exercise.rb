students = ['Hannah',
            'Penelope',
            'Rabastan',
            'Neville',
            'Tonks',
            'Seamus']

houses = ['Hufflepuff',
          'Ravenclaw',
          'Slytherin',
          'Griffyndor',
          'Hufflepuff',
          'Griffyndor']


array = ["aardvark", "art", "apple", "beets", "beach",
          "lemon", "love", "lamb", "lobotomy", "zephyr"]

new_array = array.group_by do |word|
  word.chars.first
end.values


p new_array
