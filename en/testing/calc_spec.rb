require "minitest/autorun"
require_relative "calc"

describe Calculator do
  before do
    @calculator = Calculator.new
  end

  after do
    @calculator = nil
  end

  describe "object" do
    it "must be of the Calculator type" do
      expect(@calculator).must_be_kind_of Calculator
    end

    it "must have a method to add" do
      expect(@calculator).must_respond_to :add
    end

    it "must have a method to subtract" do
      expect(@calculator).must_respond_to :subtract
    end
  end

  describe "addition" do
    it "must be 2" do
      expect(@calculator.add(1, 1)).must_equal 2
    end
  end

  describe "subtraction" do
    it "must be 0" do
      expect(@calculator.subtract(1, 1)).must_equal 0
    end
  end
end
