require 'stock_quote'

module Stox
  class Quote

    attr_reader :price

    def initialize(symbol)
      @price = StockQuote::Stock.quote(symbol).bid_realtime
    end

  end
end