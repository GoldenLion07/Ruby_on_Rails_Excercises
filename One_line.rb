def Always_3(user_number)
	puts 'Always' + ((user_number + 5) * 2 - 4 / 2 - user_number).to_s
end
puts "Give me a Number"
user_number = gets.to_i
Always_3(user_number).to_s
