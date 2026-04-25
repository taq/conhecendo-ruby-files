require "minitest/autorun"
require "minitest/reporters"
require_relative "calc"

Minitest.load_plugins
Minitest::Reporters.use! Minitest::Reporters::DefaultReporter.new

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

    it "must have an addition method" do
      expect(@calculator).must_respond_to :add
    end

    it "must have a subtract method" do
      expect(@calculator).must_respond_to :subtract
    end
  end

  describe "addition" do
    it "must equal 2" do
      expect(@calculator.add(1, 1)).must_equal 2
    end
  end

  describe "subtraction" do
    it "must igual 0" do
      expect(@calculator.subtract(1, 1)).must_equal 0
    end
  end
end
