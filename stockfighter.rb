require 'httparty'

# Or wrap things up in your own class
class Stockfighter
  include HTTParty

  base_uri 'api.stockfighter.io/ob/api'

  def initialize
  end

  def heartbeat
    response = self.class.get("/heartbeat")
    response["ok"] == true ? "All is well" :  "Something is wrong: #{response}"
  end

  def get_quote(stock)
    self.class.get("/venues/CSBBEX/stocks/#{stock}/quote")
  end

  def market_order(stock, quantity)
    self.class.put("/venues/CSBBEX/stocks/#{stock}/quote")
  end
end
