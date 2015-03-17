def stock_picker prices
  best_days = []
  best_value = 0
  days_indexes = []
  prices.each do |first_day|
    first_day_index = prices.index(first_day)
    range = prices[first_day_index..-1]
      range.each do |second_day|
      if second_day - first_day > best_value
        best_value = second_day - first_day
        best_days[0,1] = first_day, second_day
        days_indexes[0] = prices.index(best_days[0])
        days_indexes[1] = prices.index(best_days[1])      
      end   
    end
  end
  puts days_indexes
end

stock_picker([17,3,6,9,15,8,6,1,10])