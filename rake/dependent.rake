require "open3"

task default: "files:list"

FILEMASK = "*.txt"
ZIPFILE  = "rake.zip"

namespace :files do
  desc "Lista os arquivos candidatos à compactação"
  task :list do
    Dir.glob(FILEMASK) do |file|
      puts "encontrei o arquivo: #{file}"
    end
  end
end

namespace :zip do
  desc "Lista os arquivos compactados"
  task :list do
    Dir.glob(ZIPFILE) do |file|
      puts "encontrei o arquivo: #{file}"
    end
  end

  desc "Apaga o arquivo .zip anterior" 
  task :clean do
    puts "Apagando o arquivo #{ZIPFILE}, se existir ..."
    File.delete(ZIPFILE) if File.exists?(ZIPFILE)
  end

  desc "Cria o arquivo .zip" 
  task build: :clean do
    puts "Criando o arquivo #{ZIPFILE} ..."
    list = Dir.glob(FILEMASK).sort.join(", ")
    puts "Adicionando os arquivos #{list} ..."
    stdin, stdout, stderr = Open3.popen3("zip #{ZIPFILE} #{list}")
    error = stderr.read
    if error.size == 0
      puts "Arquivo criado com sucesso."
    else
      puts "Erro criando o arquivo: #{error}"
    end
  end
end
