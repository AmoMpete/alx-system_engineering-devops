#!/usr/bin/env ruby
# displays a script that accepts one argument and pass it to a regular expression matching method
# displays the regular expression must be only matching: capital letters

puts ARGV[0].scan(/[A-Z]*/).join
