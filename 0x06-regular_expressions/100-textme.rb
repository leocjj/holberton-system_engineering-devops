#!/usr/bin/env ruby
print ARGV[0].scan(/(?<=\[from:)[+?0-9A-Za-z]+/).join  + ','
print ARGV[0].scan(/(?<=\[to:)[+?0-9A-Za-z]+/).join + ','
puts ARGV[0].scan(/(?<=\[flags:)[+-?{Alnum}-]+/).join

#print ARGV[0].scan(/(?<=\[from:)(.*?)\]/).join + ','
#print ARGV[0].scan(/(?<=\[to:)(.*?)\]/).join + ','
#puts ARGV[0].scan(/(?<=\[flags:)(.*?)\]/).join

