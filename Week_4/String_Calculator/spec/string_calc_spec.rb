require_relative "../lib/string_calculator"
require "spec_helper"

describe "StringCalculator" do
	# before :each do
		# @calculator = StringCalculator.new
		
	it "returns 0 for an empty string" do
		expect(StringCalculator.new.add("")).to eq(0)
		end	

	it "returns 3 just that number" do
		expect(StringCalculator.new.add("3")).to eq(3)
	end
end