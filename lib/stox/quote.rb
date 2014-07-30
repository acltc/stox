module Stox
  class Quote
    def initialize(symbol="KO")
      bid = StockQuote::Stock.quote(symbol).bid_realtime
      puts "The realtime bid for #{symbol} is $#{bid}!"
    end
  end
end