

x = 0
students = Array.new()
until x > 0 

	puts "Hello Student, please enter your name:"
	value = gets.chomp.downcase

	if value == "jacob" then
		puts "Thanks #{value}, guess that's everyone for this class"
		students.push(value)	
		x = 1
	else
		puts "Thanks #{value}, please pass me on to the next student."
		students.push(value)	
		value = ""
	end

end

students.each do |student|
    puts student
end