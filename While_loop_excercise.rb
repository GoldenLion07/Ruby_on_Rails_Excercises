puts "Are we there yet? Please Answer Y/N: "
answer = gets.chomp.downcase

while (answer.downcase == "n")
	puts "Are we there yet? Please Answer Y/N: "
	answer = gets.chomp.downcase
end