data = {
        "foo"=>"small bead",
        "bar"=>"large bead",
        "baz"=>nil
        }

data.each do |key, value|
  data[key] = [value]
  data[key] << "x"
end

data.delete(foo) #delete key value pair with key
puts data
