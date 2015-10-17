suits = ["Clubs", "diamonds", "hearts", "spades"]
values = ["2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K", "A"]
deck = []


suits.each do |suit| 
	values.each do |value|
		deck << "#{value} + #{suit}"
		puts suit + value
	end
end

puts "Time to shuffle the deck!!  "
deck.shuffle!
x = 0
while x < 52 do
	puts deck[x]
	x = x + 1
end
