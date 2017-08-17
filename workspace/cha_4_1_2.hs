avg ::  Num a => [a] ->a
avg [xs] = sum [xs] / fromIntegral (length [xs] )