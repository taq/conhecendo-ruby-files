File.open('flip_flop_test.txt').each do |line|
  if line.match?(/^\_start_/) .. line.match?(/^_end_/)
    puts "\t#{line}".gsub(/_\w+_/, '')
  else
    puts line
  end
end
