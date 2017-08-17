tell::(Show a )=>[a]->String
tell []="ed"
tell (x:[])="ds"++show x

badAdd :: (Num a )=>[a]->a
badAdd (x:y:z:[])=x+y+z

firstl::String -> String
firstl ""="sdfasd"
firstl ad@(x:y:xs) = " frtL " ++"  " ++ad++ "   "++ [x] ++"  is " ++[y] ++"dd   " ++ xs

--nitaials :: String->String->String
--initaials firstname lastname = [f] ++ ".  " ++ [l] ++ "."
	--where (f:_)=firstname
	--where (l:_)=lastname
	
max1 :: (Ord a)=>[a] ->a
max1 []=error "sdfasfsf"
max1 [x]=x
max1 (x:xs)=max x (max1 xs)
