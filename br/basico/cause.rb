begin
  begin
    raise 'foo'
  rescue StandardError => foo
    raise 'bar'
  end
rescue StandardError => bar
  puts "a causa de #{bar} foi #{bar.cause}"
end
