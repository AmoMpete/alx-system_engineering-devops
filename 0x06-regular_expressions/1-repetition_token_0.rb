#!/usr/bin/env ruby
# displays a script that accepts one argument and pass it to a regular expression matching method
# displays a range with {2,5}

puts ARGV[0].scan(/hbt{2,5}n/).join
