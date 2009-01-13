class Option
    attr_accessor :strike, :last, :bid, :ask, :volume, :ticker
    def initialize(strike, last, bid, ask, volume, ticker)
        @strike = strike.to_f
        @last = last.to_f
        @bid = bid.to_f
        @ask = ask.to_f
        @volume = volume.to_i
        @ticker = ticker
    end

    def option_sale
        option_price * 100
    end

    def option_price
        if(@ask.to_f==0 and @bid.to_f==0) then
          @last
        else
          (@ask.to_f + @bid.to_f) / 2
        end
    end

    def type
       "---"
    end

    def to_s
        self.type + ": Strike: #{@strike} Last: #{@last} Bid: #{@bid} Ask: #{@ask} Volume: #{@volume}"
    end
end

class CallOption < Option
   def type
      "Call"
   end
end

class PutOption < Option
   def type
      "Put"
   end
end
