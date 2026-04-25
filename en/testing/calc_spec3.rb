require "minitest/autorun"
require "minitest/mock"
require_relative "calc"

describe Calculator do
  let(:calculator) { Calculator.new }

  describe "weird addition" do
    it "must equal 3" do
      calculator.stub :add, 3 do
        expect(calculator.add(1, 1)).must_equal 3
      end
    end
  end
end
