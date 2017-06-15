puts "Please enter your birthdate in the Month/Day/Year format"
birthdate = gets.chomp

def birth_path_number(birthdate)

birth_path_number = birthdate[0].to_i + birthdate[1].to_i +  birthdate[2].to_i + birthdate[3].to_i + birthdate[4].to_i + birthdate[5].to_i + birthdate[6].to_i + birthdate[7].to_i + birthdate[8].to_i + birthdate[9].to_i
birth_path_number = birth_path_number.to_s
birth_path_number = birthdate[0].to_i + birthdate[1].to_i
if (birth_path_number > 9) then
	birth_path_number = birth_path_number.to_s
	birth_path_number = birth_path_number[0].to_i + birth_path_number[1].to_i
end
return birth_path_number
end

def message(birth_number)
case birth_number
when 1 then 
	puts "One is the leader. The number one indicates the ability to stand alone, and is a strong vibration. Ruled by the Sun."
when 2 then
	puts "This is the mediator and peace-lover. The number two indicates the desire for harmony. It is a gentle, considerate, and sensitive vibration. Ruled by the Moon."
when 3 then
	puts "Number Three is a sociable, friendly, and outgoing vibration. Kind, positive, and optimistic, Three’s enjoy life and have a good sense of humor. Ruled by Jupiter."
when 4 then
	puts "This is the worker. Practical, with a love of detail, Fours are trustworthy, hard-working, and helpful. Ruled by Uranus."
when 5 then
	puts "This is the freedom lover. The number five is an intellectual vibration. These are ‘idea’ people with a love of variety and the ability to adapt to most situations. Ruled by Mercury."
when 6 then
	puts "This is the peace lover. The number six is a loving, stable, and harmonious vibration. Ruled by Venus."
when 7 then
	puts "This is the deep thinker. The number seven is a spiritual vibration. These people are not very attached to material things, are introspective, and generally quiet. Ruled by Neptune."
when 8 then
	puts "This is the manager. Number Eight is a strong, successful, and material vibration. Ruled by Saturn."
when 9 then
	puts "This is the teacher. Number Nine is a tolerant, somewhat impractical, and sympathetic vibration. Ruled by Mars."
else "I don't think that number exists..."
end

end

birth_number = birth_path_number(birthdate)
print "your birth path number is #{birth_number}"
message = message(birth_number)
puts message
