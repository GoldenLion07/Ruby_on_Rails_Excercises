class Tiger

	@@total_tigers = 0

	def intitialize
		@@total_tigers += 1
	end

	def self.current_count
		puts "There are currently #{@@total_tigers} instance in my tiger class."
	end

	def set_name(tiger_name)
		@name = tiger_name
	end

my_tiger = Tiger.new
my_tiger.set_name = "Raja"
tiger_name = my_tiger.get_name

puts Tiger.current_count.inspect
puts Tiger.inspect
my_tiger.inspect