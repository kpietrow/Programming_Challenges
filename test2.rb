#!/usr/bin/env ruby


a = Array.new

a[0] = ["0", 3]
a[1] = ["1", 4]
a[2] = ["5", 4]
a[3] = ["4", 4]
a[4] = ["6", 5]

a = a.sort_by! { |key, value| [value, key] }
print a