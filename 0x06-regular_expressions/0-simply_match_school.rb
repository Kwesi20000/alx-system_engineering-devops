#!/usr/bin/env ruby

def match_school(argument)
  regex = /School/
  if argument.match?(regex)
    puts "#{argument}"
  else
    puts "No match found for the term 'School' in the argument: #{argument}"
  end
end

# Check if an argument is provided
if ARGV.empty?
  puts "Please provide an argument."
else
  argument = ARGV[0]
  match_school(argument)
end
