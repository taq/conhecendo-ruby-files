require "zip"
require "fileutils"

myzip = "teste.zip"
File.delete(myzip) if File.exist?(myzip)

Zip::File.open(myzip, create: true) do |zipfile|
  Dir.glob("[0-9]*.txt") do |file|
    puts "Zipando #{file}"
    zipfile.add("txts/#{file}", file)
  end
end

Zip::File.open(myzip) do |zipfile|
  zipfile.each do |file|
    dir = File.dirname(file.name)
    puts "Descompactando #{file.name} para #{dir}"

    FileUtils.mkpath(dir) unless File.exist?(dir)

    zipfile.extract(file.name,file.name) do |entry, file|
      puts "Arquivo #{file} existe, apagando ..."
      File.delete(file)
    end
  end
end
