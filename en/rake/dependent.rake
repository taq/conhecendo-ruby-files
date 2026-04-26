require "open3"

task default: "files:list"

FILEMASK = "*.txt"
ZIPFILE  = "rake.zip"

namespace :files do
  desc "Lists the files to be compressed"
  task :list do
    Dir.glob(FILEMASK) do |file|
      puts "found file: #{file}"
    end
  end
end

namespace :zip do
  desc "Lists the compressed files"
  task :list do
    Dir.glob(ZIPFILE) do |file|
      puts "found file: #{file}"
    end
  end

  desc "Delete the previous .zip file"
  task :clean do
    puts "Deleting the #{ZIPFILE} file, if it exists ..."
    File.delete(ZIPFILE) if File.exist?(ZIPFILE)
  end

  desc "Create .zip file"
  task build: :clean do
    puts "Creating the #{ZIPFILE} file ..."
    list = Dir.glob(FILEMASK).sort.join(", ")
    puts "Adding the files #{list} ..."
    _, _, stderr = Open3.popen3("zip #{ZIPFILE} #{list}")
    error = stderr.read
    if error.size == 0
      puts "File created succcesfully."
    else
      puts "Error creating file: #{error}"
    end
  end
end
