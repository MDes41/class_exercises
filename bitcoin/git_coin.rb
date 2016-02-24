require 'digest'
class Mine
  def mine(target, input)
      (1..100000000).each do |i|
      message = "#{input}#{i}"
      if Digest::SHA1.hexdigest(message).hex < target.hex
        return message
        puts message
      end
      puts message
    end
  end
end

m = Mine.new
target = "0000" + "f" * 36
message = m.mine(target, "matt")
require "pry"
binding.pry
