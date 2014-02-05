#!/usr/bin/env ruby

# test

a = Array.new(4) { Array.new(2) }
input = [1,2.2,3,4,5,6,7,9,10]
hi = 3
b = gets.chomp



#a[input[0]] = [input[1..(input.size())]]
#puts a[1]

for i in 0..hi
	a[i] = [input[1], input[2]]
end

print b.is_a? String
print b.is_a? Integer
print b.is_a? Float