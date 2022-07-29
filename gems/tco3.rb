RubyVM::InstructionSequence.compile_option = {
  tailcall_optimization: true,
  trace_instruction: false
}

require_relative 'tco2.rb'

[4, 40_000].each do |num|
  puts fact(num)
end
