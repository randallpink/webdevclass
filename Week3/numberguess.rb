x = 0
until x == 1 

	puts "Pick a number between 1-100?"
	thenumber = rand(101)

	choice = gets.chomp.to_i

	if choice == thenumber then
		puts "You've won! Congratulations!! The answer was #{thenumber}." 
		
	elsif (thenumber - choice).abs < 6  then
		puts "Oh so close you were only #{ (thenumber - choice).abs } away! The answer was #{thenumber}." 
	elsif choice < 100 then
			puts "Ooh, unlucky, good guess but not a winner... The answer was #{thenumber}." 
	else
		puts "thats not a valid guess... try again next time!"
		x = 1
	end
end
