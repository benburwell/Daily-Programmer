# Daily Programmer 122
# 2013 April 01
#
# Sum Them Digits
# 
# Ben Burwell

def digitalRoot(num)

	if num < 10
		return num
	end

	# sum the digits
	sum = 0
	until num < 10
		sum += num % 10
		num = num / 10
	end
	sum += num

	if sum > 9
		return digitalRoot(sum)
	end

	return sum
end

# should print 8
puts digitalRoot(31337)

# should print 1
puts digitalRoot(1073741824)