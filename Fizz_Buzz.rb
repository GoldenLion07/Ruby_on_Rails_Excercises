(1..100).each do |i|
if i % 3 == 0
	
	print "Fizz"

elsif i % 5 == 0
	
	print "Buzz"

elsif (i % 3 == 0 && i % 5 == 0)
	print 
	"FizzBuzz"

else
	puts i
end

end