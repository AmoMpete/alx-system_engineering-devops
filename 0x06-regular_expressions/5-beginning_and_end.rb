#!/usr/bin/env ruby
# displays a script that accepts one argument and pass it to a regular expression matching method
# display the regular expression to exactly match a string that starts with h ends with n and can have any single character in between

puts ARGV[0].scan(/h.n/).join
