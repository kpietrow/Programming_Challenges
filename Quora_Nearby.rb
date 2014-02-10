#!/usr/bin/env ruby
# http://www.quora.com/challenges#nearby

# calculates distance on a graph
def distance (x1, y1, x2, y2)
	return Math.sqrt((x2 - x1)**2 + (y2 - y1)**2).round(3)
end

# search a specific topic
def t_search(num_results, topic, t_list)
	# creates empty, new refined array
	new_t_list = Array.new {Array.new}
	
	# loop through old refined array
	for i in t_list
		
		# test candidate against fresh, or recently usurped, value from old refined list 
		# if distance is lower, or is the same distance and/or higher ID, add usurper to new list
		if i[1] > topic[1] or (i[1] == topic[1] and i[0] < topic[0])
			new_t_list.push(topic)
			
			# keep track of the usurped value
			topic = i
			
		# else we're good, so push old value
		else
			new_t_list.push(i)
		end
	end
	# if length of list is too short, give value freebie to the end
	if new_t_list.length < num_results
		new_t_list.push(topic)
	end
	return new_t_list
end


# Will coordinate each query's search from within this function
def main_topic_search (query, topics)
	# note to self, query structure: number of results, x, y
	# and topic structured: id, x, y
	puts "run_topic"
	
	# create new array for query results
	t_list = Array.new {Array.new}
	
	# go through topics 1-by-1
	for topic in topics
		
		# distance on graph
		d_graph = distance(topic[1], topic[2], query[1], query[2])
	
		# make sure to start off new results list with an entry
		if t_list.length == 0
			t_list.push([topic[0], d_graph])
			
		# preliminary check to see that we're not wasting our time with a very
		# high number, or if new result list isn't full yet
		elsif d_graph <= t_list[t_list.length - 1][1] or t_list.length < query[0]

			# pass in topic id, distance, and the result list
			t_list = t_search(query[0], [topic[0], d_graph], t_list)
		end
	end
	
	puts "\nresults: "
	for topic in t_list
		print topic[0]
		print " "
	end
end

def main_question_search (query, questions, topics)
	# note to self, query structure: number of results, x, y
	# and query structured: id, num of topics, topic ids
	# topic: id, x, y
	
	puts "run question search"
	
	# possible topics
	t_possible = Array.new

end




def run_question_search (num_results, loc1, loc2, questions, topics)
	
	
end

def main
	input = gets.chomp.split(" ").map(&:to_i)
	num_topics, num_questions, num_queries = input[0], input[1], input[2]

	topics = Array.new {Array.new}
	questions = Array.new {Array.new}
	queries = Array.new(num_queries) { Array.new(4) }
	
	# receive topics
	for i in 0..(num_topics - 1)
		input = gets.chomp.split(" ")
		topics.push([Integer(input[0]), Float(input[1]), Float(input[2])])
	end
	
	# receive questions
	for i in 0..(num_questions - 1)
		input = gets.chomp.split(" ").map(&:to_i)
		questions.push(input)
	end
	
	# receive queries
	for i in 0..(num_queries - 1)
		puts "queries activated"
		input = gets.chomp.split(" ")
		queries[i] = [input[0], Integer(input[1]), Float(input[2]), Float(input[3])]
	end
	
	# run through queries
	for entry in queries
		if entry[0] == "t"
			puts "topic_search activation" 
			main_topic_search([entry[1], entry[2], entry[3]], topics)
		else
			main_question_search([entry[1], entry[2], entry[3]], questions, topics)
		end
	end
end

main