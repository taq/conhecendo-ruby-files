require "sequel"

Sequel.sqlite(database: "alunos.sqlite3") do |con|
    con.run("drop table if exists alunos")

    sql = <<FIM
create table alunos (
id integer primary key autoincrement not null,
nome varchar(50) not null)
FIM
    con.run(sql)

    con[:alunos].insert(id: 1, nome: 'João')
    con[:alunos].insert(id: 2, nome: 'José')
    con[:alunos].insert(id: 3, nome: 'Antonio')
    con[:alunos].insert(id: 4, nome: 'Maria')
end
