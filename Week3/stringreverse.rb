def stringreverse(text)
	text.to_s.reverse!
end



puts "Please input a string that you would like to flip:"

var = gets.chomp

rev = stringreverse(var)

puts "Your string #{var} is now #{rev}..."