def stringlength(text)
	text.to_s.length
end



puts "Please input a string that you would like to know the length of:"

var = gets.chomp

len = stringlength(var)

puts "Your string #{var} is #{len} digits long..."