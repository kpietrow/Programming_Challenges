#!/usr/local/bin/ruby -w
#http://www.reddit.com/r/dailyprogrammer/comments/1tixzk/122313_challenge_146_easy_polygon_perimeter/
# 1/25/2014
require "cmath"

def main
  # retrieve console input
  input = gets.chomp.split(" ").map(&:to_f)
  sides, circumradius = input[0], input[1]
  
  # calculate total circumference
  circumference = circumradius * 2 * CMath.sin(3.1415926 / sides) * sides
  puts circumference.round(3)
end

main

