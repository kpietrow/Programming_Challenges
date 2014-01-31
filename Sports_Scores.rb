#!/usr/local/bin/ruby -w
#http://www.reddit.com/r/dailyprogrammer/comments/1undyd/010714_challenge_147_easy_sport_points/
# 1/25/2014

def main
  # get score
  score = Integer(ARGV[0])
  point_intervals = [8, 7, 3]
  
  # sort out some immediate invalids
  if (score == 1) or (score == 2) or (score == 4) or (score == 5)
    puts "Invalid Score"
  # in depth testing for remaining scores 
  else 
    for points in point_intervals
    	score = score % points
    	if score == 0
    		break
    	else
    		score = score + points
    	end
    end
    if score == 0
    	puts "Valid Score"
    else
    	puts "Invalid Score"
    end
  end
end

main

