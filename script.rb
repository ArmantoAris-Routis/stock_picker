stock_picker = [17,3,6,9,15,8,6,1,10]
 
def stock(arr)
  profit = 0
  best_buy = 0
  best_sell = 0
  arr.map do |find_lowest|
    arr.reverse.map do |find_highest|
      if find_highest>find_lowest && arr.index(find_highest) > arr.index(find_lowest)
        outcome = find_highest- find_lowest
        if outcome> profit
          profit = outcome
          best_sell = find_highest
          best_buy = find_lowest
        end
      end
    end
  end
  puts "Taking into account the list of prices you provided us with, the best day to buy would be the day #{arr.index(best_buy)} with where the stock holds the value #{best_buy}"
  puts "Taking into account the list of prices you provided us with, the best day to sell would be the day #{arr.index(best_sell)} with where the stock holds the value #{best_sell}"
  puts "If you follow our advise your profit will gain an overall profit of #{profit}$"
end
 
stock(stock_picker)