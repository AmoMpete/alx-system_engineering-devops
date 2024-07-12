#!/usr/bin/env ruby
# displays a script that accepts one argument and pass it to a regular expression matching method
# displays the regular expression must match a 10 digit phone number

puts ARGV[0].scan(/*[0-9]{10}$/).join
