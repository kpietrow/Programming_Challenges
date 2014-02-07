#!/usr/bin/env ruby

def results_update(test, a)
	# creates empty, new refined array
	new_a = Array.new {Array.new}
	
	# loop through old refined array
	for i in a
		# test candidate against fresh, or recently usurped value from old refined list 
		# if distance is lower, or same distance/higher ID, add usurper to new list
		if i[1] > test[1] or (i[1] == test[1] and i[0] < test[0])
			new_a.push(test)
			# keep track of the usurped value
			test = i
		else
			# else we're good, so push old value
			new_a.push(i)
		end
	end
	# if length of list is too short, give value freebie to the end
	if new_a.length < 4
		new_a.push(test)
	end
	return new_a
end

def main
a = Array.new {Array.new}
b = Hash.new

b[7] = 3
b[8] = 2
b[9] = 4
b[1] = 3
b[2] = 1
b[14] = 4


for i in b
	puts "\na: "
	print a
	puts "\n\n"
	puts "i: "
	print i
	puts "\n\n"
	if a.length == 0
		a.push(i)
	elsif i[1] <= a[a.length - 1][1] or a.length < 4
		a = results_update(i, a)
	end
end

puts "the final a"
print a

end
main