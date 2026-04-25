require "minitest/autorun"
require "minitest/mock"
require_relative "calc_average"

describe Calculator do
  let(:calculator) { Calculator.new }

  describe "average" do
    it "must equals 2" do
      # this is the mock
      collection = Minitest::Mock.new
      collection.expect :values, [1, 2, 3]

      # here we send to the calculator average method
      expect(calculator.average(collection)).must_equal 2

      # here we verify the mock values method was called, inside the average method
      collection.verify
    end
  end
end
