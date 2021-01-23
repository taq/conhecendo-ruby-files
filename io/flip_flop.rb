File.open('flip_flop_test.txt').each do |line|
  puts line.match?(/^\_start_/) .. line.match?(/^_end_/) ? "\t#{line}".gsub(/_\w+_/, '') : line
end
