def lbs_to_kg(pounds)
	kgs = pounds * 0.453592
end


puts "please enter in the number of pounds you would like to convert:"

lbs = gets.chomp.to_i

kilos = lbs_to_kg(lbs)	

puts "#{lbs} pounds equals #{kilos} kilos"





