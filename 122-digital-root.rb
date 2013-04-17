# Daily Programmer 122
# 2013 April 01
#
# Sum Them Digits
# 
# Ben Burwell

def digital_root(num)

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
		return digital_root(sum)
	end

	return sum
end

# should print 8
puts digital_root(31337)

# should print 1
puts digital_root(1073741824)