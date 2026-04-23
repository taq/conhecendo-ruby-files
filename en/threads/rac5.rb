name = "taq"
ractor = Ractor.new do
  # Will generate an error! Can't access external variables
  name # to work, use "taq" as a fixed string here
end

ractor.join
