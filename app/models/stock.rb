class Stock < ActiveRecord::Base

  def self.quote(symbol)
    symbol ||= "AAPL"

    data = HTTParty.get "https://query.yahooapis.com/v1/public/yql?q=select*from%20yahoo.finance.quotes%20where%20symbol%20in%20(%22#{symbol}%22)&format=json&env=store%3A%2F%2Fdatatables.org%2Falltableswithkeys&callback="

    stock = data["query"]["results"]["quote"]

    results = [stock["symbol"], stock["Ask"].to_f, stock["Name"]]
    
  end
end
