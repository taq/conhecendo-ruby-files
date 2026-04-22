class Test
  def only_once
    def self.only_once
      raise StandardError, "This method destroyed itself!"
    end

    puts "I'll only run this once, you know?"
  end
end

teste = Test.new
teste.only_once
teste.only_once
