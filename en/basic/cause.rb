begin
  begin
    raise 'foo'
  rescue StandardError => foo
    raise 'bar'
  end
rescue StandardError => bar
  puts "the cause of #{bar} was #{bar.cause}"
end
