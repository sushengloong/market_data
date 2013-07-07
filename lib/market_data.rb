require "market_data/version"

module MarketData

  class ResponseData
    attr_reader :status, :data

    def initialize status, data
      @status = status
      @data = data
    end
  end

  def self.for_symbol symbol
    ResponseData.new 200, { :open => 1, :high => 2, :low => 3, :close => 4, :volume => 5 }
  end

end
