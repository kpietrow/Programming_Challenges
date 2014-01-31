#!/usr/local/bin/ruby
#http://www.reddit.com/r/dailyprogrammer/comments/1sob1e/121113_challenge_144_easy_nuts_bolts/
# 1/31/14

# retrieve individual lists
def retrieve_list (rows)
	# temporary hash table
	temp_items = Hash.new
	
	for row in 0..(rows - 1)
		input = gets.chomp.split(" ")
		item = String(input[0])
		quantity = Integer(input[1])
		temp_items[item] = quantity
	end
	
	# return list of items
	return temp_items
end

def main
	# get number of rows
	puts "Enter number of rows"
  	rows = Integer(gets.chomp)
  	# construct hash tables
	items1 = Hash.new
	items2 = Hash.new
	
	# retrieve first list
	puts "Please enter first list of items"
	items1 = retrieve_list(rows)
	puts "Excellent..."
	
	# retrieve second list
	puts "Please enter second list of items"
	items2 = retrieve_list(rows)
	puts "Calculating...\n"
	
	# test for differences in values, then print
	items1.each do |key, value|
		if value != items2[key] 
			if items2[key] > value
				puts key + " +" + String(items2[key] - value)
			else
				puts key + " " + String(items2[key] - value)
			end
		end
	end
end

main