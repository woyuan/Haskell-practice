solveRPN :: String ->Double
solveRPN  = head . foldl f [] .words
   where f (x:y:xs) "*" = (x*y):xs
         f (x:y:xs) "+" = (x+y):xs
         f (x:y:xs) "-" = (y-x):xs
         f x numstring  = read numstring :x