def stock_picker(daily_price)
  
  maxProfit = 0
  buy_day, sell_day = 0
  
  for buy_on in 0 ... daily_price.size
	for sell_on in buy_on ... daily_price.size
	  if daily_price[sell_on] - daily_price[buy_on] > maxProfit
		maxProfit = daily_price[sell_on] - daily_price[buy_on]
        buy_day, sell_day = buy_on, sell_on
	  end    
	end
  end

  if maxProfit == 0
    puts "don't buy! It's a bad time to invest!"
  else
    [buy_day,sell_day]
  end
end