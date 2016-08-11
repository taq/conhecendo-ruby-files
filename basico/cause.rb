begin
  begin
    raise 'foo'
  rescue Exception => foo
    raise 'bar'
  end
rescue Exception => bar
  puts "a causa de #{bar} foi #{bar.cause}"
end
