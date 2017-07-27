require "httparty"
require "money"
module Lita
  module Services
    class SurbtcAdaptor
      def initialize

      end
      def get_current(info)
        return unless [:last_price, :volume, :max_bid, :min_ask].include? info
        response = HTTParty.get('https://www.surbtc.com/api/v2/markets/btc-clp/ticker')
        parsed = JSON.parse response, symbolize_names: true
        result = parsed[:ticker][info]
        (info == :volume) ? result[0] : Money.new(*result).format
      end
    end
  end
end
