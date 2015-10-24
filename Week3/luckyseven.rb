x = 0
puts "Welcome to the lucky seven game!"
thenumber = 0 
until thenumber == 7 
	thenumber = rand(11)

	if thenumber == 7 then
		puts "You've won! Congratulations!! The number was #{thenumber}." 
		x = x + 1
	else
		puts "Unlucky, the number was #{thenumber}"
		x = x+ 1
	end

end
puts "It only took you #{x} tries to get the lucky seven!"