
price1 = [17, 3, 6, 9, 15, 8, 6, 1, 10]
price2 = [17, 16, 15, 3, 11, 2, 1]
price3 = [1,2,3,4,5,6,7]
price4 = [1,1,1,1,1,1,1]
price5 = [7,6,5,4,3,2,1]

def stock_picker(prices)
  price_min = prices.index(prices.min)
  price_max = prices.index(prices.max)
  if price_min == price_max
  # case where all values are equal
    puts "slow and steady"
  else
    # case where largest is first or smallest is last
    mod_prices = remove_outliers(prices)
    # case where largest is before smallest
    mod_prices = remove_smallest(mod_prices)
    if mod_prices == []
      # case where numbers are in reverse consecutive order
      puts "no chance to earn big"
    else
      # case where normal
      final_min = prices.index(mod_prices.min)
      final_max = prices.index(mod_prices.max)
      puts "[#{final_min}, #{final_max}]"
    end
  end
end

def remove_outliers(prices)
  price_min = prices.index(prices.min)
  price_max = prices.index(prices.max)
  if prices == []
    []
  elsif price_min == prices.size - 1
    remove_outliers(prices.take(prices.size - 1))
  elsif price_max == 0
    remove_outliers(prices.drop(1))
  else
    prices
  end
end

  def remove_smallest(prices)
    price_min = prices.index(prices.min)
    price_max = prices.index(prices.max)
    if prices == []
      []
    elsif price_min > price_max
      remove_smallest(prices.reject { |p| p == prices.at(price_min) })
    else
      prices
    end
  end


stock_picker(price1)
stock_picker(price2)
stock_picker(price3)
stock_picker(price4)
stock_picker(price5)