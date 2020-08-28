mapping = ("a".."z").to_a.unshift(" ")

puts "Type encoded string with numbers separated by spaces, use 0 to represent a space"
encoded = gets.chomp.split(" ")

encoded.each do |number|
    print mapping[number.to_i]
end