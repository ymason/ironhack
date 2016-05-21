require_relative "../lib/fizzbuzz.rb"
require "spec_helper"

describe FizzBuzz do 

	before :each do
		@game = FizzBuzz.new
	end

	describe "#fizz" do
		it "removes 3 every time and replaces with fizz" do
      		expect(@game.fizzbuzz(3)).to eq("fizz")
		end
    end

    describe "#buzz" do
		it "removes 5 every time and replaces with buzz" do
      		expect(@game.fizzbuzz(5)).to eq("buzz")
      	end
    end
    describe "#fizzbuzz" do
		it "removes 15 every time and replaces with fizzbuzz" do
      		expect(@game.fizzbuzz(15)).to eq("fizzbuzz")
      	end
    end
end