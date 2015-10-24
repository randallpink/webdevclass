def two_times_something(something)
	sum = 2 * something

end

x = 0


puts "please enter a number between 1-10"
value = gets.chomp.to_i 

if value > 10 then
	puts "thats an invalid entry, exiting program"
	x = 11
else
	until x == 10
			value = two_times_something(value)
			puts value
			x = x + 1
	end

end