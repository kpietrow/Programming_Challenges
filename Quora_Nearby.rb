#!/usr/bin/env ruby
# http://www.quora.com/challenges#nearby

require 'mathn'

def test_loc
	
end

def run_topic_search (num_results, loc1, loc2, topics)
	puts "run_topic"
	results = Hash.new
	new_results = Hash.new
	
	for i in topics
		result = Math.sqrt((loc1 - i[1][0])**2 + (loc2 - i[1][1])**2).round(3)
		results[i[0]] = result
	end
	print "prelim results: "
	print results
	
	results = results.sort_by { |id, distance| distance }
	
	puts "\n"
	print results
	
	temp = 0
	
	# results.take(num_results)
	# each_value
	
	for i in results
		if new_results.length < num_results
			new_results[i[0]] = i[1]
		else
			new_results.each_value{|value|
				if 
		end
	end
	puts ""
	puts new_results
end






def run_question_search (num_results, loc1, loc2, questions, topics)
	
	
end

def main
	input = gets.chomp.split(" ").map(&:to_i)
	num_topics, num_questions, num_queries = input[0], input[1], input[2]

	topics = Hash.new
	questions = Hash.new
	queries = Array.new(num_queries) { Array.new(4) }
	
	for i in 0..(num_topics - 1)
		input = gets.chomp.split(" ")
		print input
		topics[input[0]] = [Float(input[1]), Float(input[2])]
		puts topics
	end
	
	for i in 0..(num_questions - 1)
		input = gets.chomp.split(" ")
		print input
		questions[input[0]] = input[1..(input.size())].map(&:to_i)
		puts questions
	end
	
	for i in 0..(num_queries - 1)
		puts "queries activated"
		input = gets.chomp.split(" ")
		queries[i] = [input[0], Integer(input[1]), Float(input[2]), Float(input[3])]
	end
	
	for entry in queries
		if entry[0] == "t"
			puts "topic_search activation"
			run_topic_search(entry[1], entry[2], entry[3], topics)
		#else
		#	run_question_search(entry[1], entry[2], entry[3], questions, topics)
		end
	end
end

main