#!/usr/local/bin/ruby -w
#http://www.reddit.com/r/dailyprogrammer/comments/1t0r09/121613_challenge_145_easy_tree_generation/
# 1/28/14

def main
  input = ARGV
  num_characters = Integer(input[0])
  base = String(input[1])
  leaves = String(input[2])
  
  count = 1
  
  # printing loop
  for i in (1..num_characters).step(2)
    # print necessary spaces
    space_count = ((num_characters - i)/2)

    for x in 1..space_count
      print " "
    end
    
    # print characters
    for x in 1..count
      print leaves
    end
    
    puts ""
    count = count + 2
  end
  
  #print spaces before base
  if num_characters != 3
    for i in 1..((num_characters - 3)/2)
      print " "
    end
  end
  
  # print base
  for i in 0..2
    print base
  end
  puts ""
end


main

