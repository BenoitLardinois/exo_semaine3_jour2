def day_trader(prices)
  n = prices.size
  imax = (1..n-1).max_by { |i| prices[i] }
  imin = (0..imax-1).min_by { |i| prices[i] }
  return [imin, imax] if imax >= n-2
  imin_next, imax_next = day_trader(prices[imax+1..-1]).map { |i| i + imax}
  prices[imin]-prices[imax] >= prices[imin_next]-prices[imax_next] ? [imin, imax] :
    [imin, imax]
end

puts day_trader([17, 3, 6, 9, 15, 8, 6, 1, 10])

