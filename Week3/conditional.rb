puts "whats your age?"

age = gets.chomp.to_i

if age <= 21 then
	puts "hey, you are too young"
else
	puts "hey, lets go get a beer"
end