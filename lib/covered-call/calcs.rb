require 'date'

module CoveredCallCalcs
   def annualized_return(period_return, days)
	# percentage should be float 0.01 == 1%
	(1 + period_return) ** (365.0 / days.to_f) - 1
   end 

   def third_friday_of(year_month)
	# If the first is a Friday, then the earliest expiration is the 15th
        first_candidate = Date.parse(year_month + "-15")
        # If the first is a Saturday, then the lastest expiration is the 21st
        last_candidate = Date.parse(year_month + "-21")
        expiry = nil
        
        (first_candidate..last_candidate).each do |candidate|
                if candidate.wday == 5 then
                        expiry = candidate
                        break
                end
        end
	expiry
   end

   def days_til_expiry(expiry)
	# expiry is a date of the form "YYYY-MM"
        # this method returns the ceiling of the number of days from today
        # to the third friday of the month
	exp = third_friday_of(expiry)      
 
	if exp == Date.today then return 1 end
   	(exp - Date.today).ceil
    end
end
