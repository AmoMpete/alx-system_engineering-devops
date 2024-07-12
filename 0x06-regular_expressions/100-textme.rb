#!/usr/bin/env ruby
# displays a script that accepts one argument and pass it to a regular expression matching method
# displays the sender phone number or name (including country code if present)
# displays the receiver phone number or name (including country code if present)
# displays the flags that were used

puts ARGV[0].scan(/\[from:(.*?)\] \[to:(.*?)\] \[flags:(.*?)]/).join(",")
