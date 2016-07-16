require_relative "../lib/app.rb"
require "spec_helper"

describe "Movies" do 

	before :each do
		@movies = MovieSearch.new("funny")
	end

	describe "#filter" do
		it "should return only 9 movies with titles" do
      		expect((@movies.filter).length).to eq(9)
      	end
     end
end