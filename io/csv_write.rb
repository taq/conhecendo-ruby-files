require 'csv'

header = %w[color hex]
data   = [
  [:red, '#ff0000'],
  [:green, '#00ff00'],
  [:blue, '#0000ff']
]
file = 'colors.csv'

CSV.open(file, 'w') do |csv|
  csv << header
  data.each do |row|
    csv << row
  end
end

puts File.read(file)
