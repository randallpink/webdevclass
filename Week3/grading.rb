x = 0
until x == 1
	puts "What was your grade on the class?"

	grade = gets.chomp.to_i

	if grade > 99 then
		puts "You've passed the class with an A++! Congratulations!!"
	elsif grade > 89 then
		puts "You've passed the class with an A! Congratulations!!"
	elsif grade > 79 then
		puts "You've passed the class with an B! Congratulations!!"
	elsif grade > 69 then
		puts "You've passed the class with an C! Congratulations!!"
	elsif grade > 59 then
		puts "You've passed the class! Congratulations!!"
	else
		puts "Unlucky, you have failed this class and will need to take this class again!"
		x = 1
	end

end	