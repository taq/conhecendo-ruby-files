require 'csv'

file   = 'colors.csv'
colors = CSV.parse(File.read(file))

p colors
