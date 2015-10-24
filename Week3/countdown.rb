

x = 0


puts "please enter a number between 1-10"
value = gets.chomp.to_i 

if value > 10 and value > 0 then
	puts "thats an invalid entry, exiting program"
	x = 11
else
	until x == 10 or value == 0
			value = value - 1
			puts value
			x = x + 1
	end

end