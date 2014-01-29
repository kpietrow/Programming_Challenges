#!/usr/local/bin/ruby -w
#http://www.reddit.com/r/dailyprogrammer/comments/1undyd/010714_challenge_147_easy_sport_points/
# 1/25/2014

def main
  # get score
  score = Integer(gets.chomp)
  # sort out some immediate invalids
  if (score == 1) or (score == 2) or (score == 4) or (score == 5)
    puts "Invalid Score"
  # test for a "pure", easily divisible score
  elsif (score % 3 == 0) or (score % 7 == 0) or (score % 8 == 0)
    puts "Valid Score"
  # in depth testing for remaining scores 
  else 
    score = score % 8
    score = score % 7
    score = score % 3
    if score == 0
      puts "Valid Score"
    else
      puts "Invalid Score"
    end
  end
end

main

