x = 0
until x == 1

	puts "dog or cat?"

	animal = gets.chomp

	if animal.to_s.downcase == 'dog' then
		puts "woof"
	elsif animal.to_s.downcase =='cat' then	
		puts "meow"
	else
		puts "you are cheating..."
		x = 1
	end
end