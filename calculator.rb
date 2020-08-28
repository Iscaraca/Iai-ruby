def product(first_num, second_num)
    return first_num.to_f * second_num.to_f
end

def divide(first_num, second_num)
    return first_num.to_f / second_num.to_f
end

def sum(first_num, second_num)
    return first_num.to_f + second_num.to_f
end

def minus(first_num, second_num)
    return first_num.to_f - second_num.to_f
end

def modulus(first_num, second_num)
    return first_num.to_f % second_num.to_f
end

puts "Simple calculator"
25.times { print "-"}
puts "\nEnter the first number"
num_1 = gets.chomp
puts "Press 1 for addition, 2 for subtraction, 3 for multiplication, 4 for division, 5 for modulus"
operator = gets.chomp
puts "Enter the second number"
num_2 = gets.chomp

if operator == '1'
    puts "#{num_1} + #{num_2} = #{sum(num_1,num_2)}"
elsif operator == '2'
    puts "#{num_1} - #{num_2} = #{minus(num_1,num_2)}"
elsif operator == '3'
    puts "#{num_1} * #{num_2} = #{product(num_1,num_2)}"
elsif operator == '4'
    puts "#{num_1} / #{num_2} = #{divide(num_1,num_2)}"
else
    puts "#{num_1} % #{num_2} = #{modulus(num_1,num_2)}"
end