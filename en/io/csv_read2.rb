require 'csv'

file = 'colors.csv'

CSV.parse(File.read(file), headers: true).each do |row|
  puts "the color code for #{row['color']} is #{row['hex']}"
end
