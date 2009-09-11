require 'date'

module CoveredCallCalcs
   def annualized_return(period_return, days)
	# percentage should be float 0.01 == 1%
	(1 + period_return) ** (365.0 / days.to_f) - 1
   end 

   def days_til_expiry(expiry)
	# expiry is a date of the form "YYYY-MM"
        # this method returns the ceiling of the number of days from today
        # to the third friday of the month
        1	
   end
end
