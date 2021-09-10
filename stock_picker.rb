def stock_picker(daily_prices)
  best_days = []
  max_profit = nil
  (daily_prices.length - 1).downto(0) do |sell_date|
    (sell_date - 1).downto(0) do |buy_date|
      profit = daily_prices[sell_date] - daily_prices[buy_date]
      max_profit = profit unless max_profit
      if profit >= max_profit
        max_profit = profit
        best_days = [buy_date, sell_date]
      end
    end
  end
  best_days
end