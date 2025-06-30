
price1 = [17, 3, 6, 9, 15, 8, 6, 1, 10]
price2 = [17, 16, 15, 3, 11, 2, 1]

def stock_picker(prices)
  prices_new = prices
  price_min = prices_new.index(prices_new.min)
  price_max = prices_new.index(prices_new.max)
  if price_min == price_max
    puts "slow and steady"
  elsif price_min == -1
    prices_new.last(prices_new.size - 1)
    stock_picker(prices_new)
  elsif price_max == 0
    prices_new.drop(1)
    stock_picker(prices_new)
  elsif price_min > price_max
    prices_new.collect { |price| price != prices_new.min}
    puts "["
    stock_picker(prices_new)
  else
    puts prices
    final_min = prices.index {|e| e == prices_new.min}
    final_max = prices.index {|e| e == prices_new.max}
    puts "[#{final_min}, #{final_max}]"
  end
end


stock_picker(price1)