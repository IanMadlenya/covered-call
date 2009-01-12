class Ticker
    attr_accessor :symbol, :price, :call_options, :put_options

    def initialize(symbol, price)
        @symbol = symbol
        @price = price.to_f
        @call_options = Array.new
        @put_options = Array.new
    end

    def add_call_option(strike, last, bid, ask, volume)
        @call_options << CallOption.new(strike, last, bid, ask, volume, self)
    end

    def add_put_option(strike, last, bid, ask, volume)
        @put_options << PutOption.new(strike, last, bid, ask, volume, self)
    end

    def option_sale_percentage(option)
        option.option_sale / @price
    end

    def stock_gain(option)
        (option.strike - @price) * 100
    end

    def total_gain(option)
        (option.option_sale + stock_gain(option))
    end

    def stock_sale_percentage(option)
        stock_gain(option) / @price
    end

    def total_sale_percentage(option)
        total_gain(option) / @price
    end

    def possibilities
        call_options.collect do |option|
            covered_call_string(option)
        end
    end

    def covered_call_string(option)
       "#{@symbol}@#{option.strike}(#{sprintf("%.2f", option.option_price)})\tCall Sale: #{sprintf("%.2f",option.option_sale)} (#{sprintf("%.2f",option_sale_percentage(option))}%)\tStock Sale: #{sprintf("%.2f", stock_gain(option))} (#{sprintf("%.2f",stock_sale_percentage(option))}%)\tTotal: #{sprintf("%.2f", total_gain(option))} (#{sprintf("%.2f",total_sale_percentage(option))}%)"
    end
end
