require "yaml"

result = YAML::load(File.open(ARGV[0]))
p result
