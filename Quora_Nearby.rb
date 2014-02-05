#!/usr/bin/env ruby
# http://www.quora.com/challenges#nearby

require 'mathn'

def run_topic_search (num_results, loc1, loc2, topics)
	results = Hash.new
	
	for i in topics
		
	end
end

def run_question_search (num_results, loc1, loc2, questions, topics)
	
	
end

def main
	input = gets.chomp.split(" ").map(&:to_i)
	num_topics, num_questions, num_queries = input[0], input[1], input[2]

	topics = Hash.new
	questions = Hash.new
	queries = Array.new(num_queries) { Array.new(4) }
	
	for i in 0..num_topics
		input = gets.chomp.split(" ")
		topics[input[0]] = [Double(input[1]), Double(input[2])]
	end
	
	for i in 0..num_questions
		input = gets.chomp.split(" ").map(&:to_i)
		questions[input[0]] = [input[1..(input.size())]]
	end
	
	for i in 0..num_queries
		input = gets.chomp.split(" ")
		queries[i] = [Integer(input[1]), Double(input[2]), Double(input[3])]
	end
	
	for entry in queries
		if queries[0] == "t"
			run_topic_search(queries[1], queries[2], queries[3], topics)
		else
			run_question_search(queries[1], queries[2], queries[3], questions, topics)
		end
	end
end

main