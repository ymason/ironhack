require_relative "../lib/lexi.rb"
require "spec_helper"

describe Lexiconomitron do 

	before :each do
		@lexi = Lexiconomitron.new
	end

  describe "#eat_t" do
    it "removes every letter t from the input" do
      expect(@lexi.eat_t("great scott!")).to eq("grea sco!")
    	end
  end

  	describe "#shazam" do
  		it "reverses letter and within words, returns only first and law words and works with Lexi" do
  		expect(@lexi.shazam(["great", "scott", "good", "got!"])).to eq(["aerg", "!og"])
  	 	end
  	end
end

# One of the methods of this Ruby interface is one called “shazam”. 

# It takes an array of words (for example [“This”, “is”, “a”, “boring”, “test”]). 

# With this array, it reverses the letters within the words (that is, [“sihT”, “si”, “a”, “gnirob”, “tset”]) 
# and ends up returning only the first and last words. 
# But Lexiconomitron eats Ts, so it returns [“sih, “se”].

# Write a test for the #shazam method. Instead of creating a new instance of the Lexiconomitron class for each test, add a before :each method that does it for you.

# Write the #shazam method to pass the test.