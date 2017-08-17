del :: Eq a => a -> [a] -> [a]
del y _ = []
del y (x:xs) | (==) y x = del y:xs
             | otherwise = del y (x:xs)