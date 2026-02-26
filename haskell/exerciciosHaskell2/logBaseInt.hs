logBaseInt :: Int -> Int -> Int
logBaseInt base n
  | n < base  = 0
  | otherwise = 1 + logBaseInt base (n `div` base)