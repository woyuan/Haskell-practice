brea:: String->(String,String)
brea xs@[]=(xs,xs)
brea as@(x:xs) 
    | x==',' = ([],xs)
    | otherwise =  let (ys,zs)= brea xs in (x:ys,zs)

-- take :: Int->

takewhil :: (a->Bool)->[a]->[a]
takewhil f []=[]
takewhil f (x:xs)
    | f x = x:takewhil  f xs
    | otherwise = []