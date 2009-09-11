
require File.join(File.dirname(__FILE__), %w[spec_helper])

describe CoveredCall do
end

describe CoveredCallCalcs, " annualized return calculator" do
	include CoveredCallCalcs

	it "should calculate annualized returns" do
		# One year at 25% is annualized to 20%
		annualized_return(0.25, 365).should be_close(0.25, 0.0001)
		
		# Spread 50% out over 2 years
		annualized_return(0.5, 730). should be_close(0.2247, 0.0001)

		# Make 1% in 10 days
		annualized_return(0.01, 10). should be_close(0.4379, 0.0001)
	end
end

describe CoveredCallCalcs, " days until expiry calculator" do
	include CoveredCallCalcs

	it "should determine days if the expiry is still to happen this month" do
		Date.stub!(:today).and_return(Date.parse("2009-09-11"))
	        days_til_expiry("2009-09").should equal(7)	
	end

	it "should determine days if the expiration is next month" do
		Date.stub!(:today).and_return(Date.parse("2009-08-01"))
	        days_til_expiry("2009-09").should equal(48)	
	end

	it "should return 1, if the expiration is tomorrow" do
		Date.stub!(:today).and_return(Date.parse("2009-09-17"))
		days_til_expiry("2009-09").should equal(1)		
	end
	
	it "should return 1, if the expiration is today" do
		Date.stub!(:today).and_return(Date.parse("2009-09-18"))
		days_til_expiry("2009-09").should equal(1)		
	end
end

