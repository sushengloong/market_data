require "rubygems"
require "minitest/autorun"
require "market_data"

describe "Market Data gem" do
  describe "when retrieving a stock quote for a symbol" do
    it "must return stock quote data" do
      resp = MarketData.for_symbol "T39.SI"
      resp.status.must_equal 200
      resp.data.wont_be_nil
      [:open, :high, :low, :close, :volume].each do |k|
        resp.data[k].wont_be_nil
      end
    end
  end
end
