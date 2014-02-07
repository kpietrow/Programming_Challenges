#!/usr/bin/env ruby


def side
puts "temp: " + String($temp)
		puts "test: " + String(test)
		if value > test[1] or (value == test[1] and key < test[0])
			$temp = [key, value]
			key, value = test[0], test[1]
			puts "key: " + key
			puts "value: " + String(value)
			puts "test, end of if: " + String(test)
		end
		puts "temp, end of map: " + String($temp)
		puts "key, end of map: " + String(key)
		puts "value, end of map: " + String(value)
		
end

def test
	b = Array.new

	b[0] = [1, 2]
	b[1] = [2, 4]
	
	i = Array.new
	i[0] = [3,5]

	b = b.each {|key, value| key, value = i[0][0], i[0][1]
		i[0] = [4,6]}

	print b
end

def test2
	temp = []
	print temp
end

test2