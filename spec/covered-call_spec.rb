
require File.join(File.dirname(__FILE__), %w[spec_helper])

describe CoveredCall do
end

describe CoveredCallCalcs do
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

