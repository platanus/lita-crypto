module Lita
  module Handlers
    class Crypto < Handler
      on :loaded, :load_on_start

      def load_on_start(_payload)
      end

      route(/a cu(a|á)nto est(á|a) el (b|B)itcoin/i, command: false) do |response|
        price_service = Services::SurbtcAdaptor.new
        price = price_service.get_current :last_price
        response.reply(t(:current_price, subject: response.user.mention_name, price: price))
      end

      route(/dame el (.+) de SurBTC/i, command: false) do |response|
        ticker = Services::SurbtcAdaptor.new
        matter = t(response.matches[0][0].to_sym).to_sym
        response.reply(ticker.get_current matter)
      end

      Lita.register_handler(self)
    end
  end
end
