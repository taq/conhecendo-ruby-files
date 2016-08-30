require "sequel"
require "sqlite3"

Sequel.sqlite(database: "alunos.sqlite3") do |con|
  ds = con[:alunos].filter(:id => :$i)
  ps = ds.prepare(:select, :select_by_id)

  (1..4).each do |id|
    print "procurando id #{id} ... "
    row = ps.call(i: id)
    puts "#{row.first[:nome]}"
  end
end
