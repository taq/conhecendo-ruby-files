#!/usr/bin/env ruby
require 'optparse'

options = {}
ARGV << '-h' if ARGV.empty? # insere o -h se não forem enviados valores

parser = OptionParser.new do |opts|
    opts.banner = "Use: opts.rb [opções]"

    opts.on('-n', '--name NAME', 'Name') do |nome|
      options[:nome] = nome
    end

    opts.on('-s', '--last_name [last_name]', 'Last name') do |last_name|
      options[:last_name] = last_name
    end

    opts.on('-i', '--age [age]', Integer, 'Especifica a age') do |age|
      options[:age] = age
    end

    opts.on('-b', '--bandas [A,B,C...]', Array, 'Lista bandas preferidas') do |bandas|
      options[:bandas] = bandas
    end

    opts.on('-t', '--string', 'Mostra opções como uma String') do
      options[:string] = true
    end

    opts.on_tail('-h', '--help', 'Mostra ajuda') do
      puts opts
      exit
    end
end

begin
  parser.parse!
  raise StandardError, 'O nome é obrigatório' if options[:nome].nil?

  if options[:string]
    puts options.map { |key, val| "#{key}: #{val}" }.join("\n")
  else
    p options
  end
rescue => exc
  STDERR.puts "Erro: #{exc}\n\n"
  STDERR.puts parser.help
end
