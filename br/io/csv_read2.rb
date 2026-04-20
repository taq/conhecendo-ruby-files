require 'csv'

file = 'colors.csv'

CSV.parse(File.read(file), headers: true).each do |row|
  puts "o código da cor #{row['color']} é #{row['hex']}"
end
