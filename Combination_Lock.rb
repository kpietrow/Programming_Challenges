#!/usr/local/bin/ruby -w
#http://www.reddit.com/r/dailyprogrammer/comments/1v4cjd/011314_challenge_148_easy_combination_lock/
# 1/25/2014

def first_number (max, pos1)
  return max*2 + pos1
end

def second_number (max, pos1, pos2)
  if pos2 == pos1
    return max
  else
    return max + ((max + -(pos2 - pos1)) % max)
  end
end

def third_number (max, pos2, pos3)
  return pos2 == pos3 ? max : (max + (pos3 - pos2)) % max
end

def main
  input = ARGV.map(&:to_i)
  max, pos1, pos2, pos3 = input[0], input[1], input[2], input[3]
  total = first_number(max, pos1)
  total = total + second_number(max, pos1, pos2)
  total = total + third_number(max, pos2, pos3)
  puts total
end

main

