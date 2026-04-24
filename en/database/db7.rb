require "sequel"
require "sqlite3"

Sequel.sqlite(database: "course.sqlite3") do |con|
  ds = con[:students].filter(id: :$i)
  ps = ds.prepare(:select, :select_by_id)

  (1..4).each do |id|
    print "looking for id #{id} ... "
    row = ps.call(i: id)
    puts "#{row.first[:name]}"
  end
end
