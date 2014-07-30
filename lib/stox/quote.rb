require 'stock_quote'

module Stox
  class Quote
    def initialize(symbol)
      bid = StockQuote::Stock.quote(symbol).bid_realtime
      puts "The realtime bid for #{symbol.upcase} is $#{bid}!"
    end
  end
end