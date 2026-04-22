#!/usr/bin/env ruby
require "optparse"

options = {}
ARGV << "-h" if ARGV.empty? # insere o -h se não forem enviados valores

parser = OptionParser.new do |opts|
    opts.banner = "Usage: opts.rb [options]"

    opts.on("-n", "--name NAME", "Specifies the name") do |name|
      options[:name] = name
    end

    opts.on("-l", "--last_name [last_name]", "Specifies the last name") do |last_name|
      options[:last_name] = last_name
    end

    opts.on("-a", "--age [age]", Integer, "Specifies the age") do |age|
      options[:age] = age
    end

    opts.on("-b", "--bands [A,B,C...]", Array, "List favorite bands") do |bands|
      options[:bands] = bands
    end

    opts.on("-s", "--string", "Shows options as a String") do
      options[:string] = true
    end

    opts.on_tail("-h", "--help", "Shows help") do
      puts opts
      exit
    end
end

begin
  parser.parse!
  raise StandardError, "Name is required" if options[:name].nil?

  if options[:string]
    puts options.map { |key, val| "#{key}: #{val}" }.join("\n")
  else
    p options
  end
rescue => exc
  STDERR.puts "Error: #{exc}\n\n"
  STDERR.puts parser.help
end
