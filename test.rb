#!/usr/bin/env ruby

# test

require 'mathn'


a = Hash.new
b = Hash.new
c = Array.new {Array.new}


a["0"] = 0
a["1"] = 0
a["6"] = 0
a["8"] = 0
a["2"] = 0
a["3"] = 3
a["9"] = 8

print "a: "
print a



b = Array.new
b[0] = ["29", 0]
b[1] = ["30", 0]
b[2] = ["31", 0]

puts "\n"
print a.sort_by {|c, b| b}

a = a.sort_by {|c, b| b}

for i in a
	if c.length < 4
		c[c.length + 1] = i.to_a
	elsif c.length == 4
		tempK = ""
		tempKV = 0
		tempV = 0
		tempVK = nil
		higher = true
		c.each {|key, value|
			if i[1] == value and i[0] > key and key < tempK
				tempK = key
				tempKV = value
				higher = false
			elsif i[1] < value and tempVK == nil
				tempVK = key
				tempV = value
				higher = false
			elsif i[1] < value and (tempVK != nil) and value > tempV
				tempVK = key
				tempV = value
				higher = false
			end
			puts "one success!"
		}
		if higher
			break
		elsif (tempVK != nil)
			c[c.index([tempVK, tempV])] = i.to_a
		else
			c[c.index([tempK, tempKV])] = i.to_a
		end
	end
end

puts "\n\n"
puts c

