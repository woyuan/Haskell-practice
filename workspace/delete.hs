delete' :: Eq a =>a -> [a] -> [a]
delete' _ [] = []
delete' b (x:xs) = if b == x  then delete' b xs  else  x:xs
