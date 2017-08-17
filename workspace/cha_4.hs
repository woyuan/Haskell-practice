-- 现在开始第四章关于递归的练习

-- 求个最大值练练手
maxh :: [Int]->Int
maxh []= error "fafds"
maxh [x] = x
maxh (x:xs) = max x (maxh xs)

-- 重复一个输入
rep :: Int->a->[a]
rep n x 
    | n<0 = []
    | otherwise = x : rep (n-1) x

-- 实现一个take
takea :: Int -> [a]->[a]
takea n _ 
    | n<=0 = []
takea _ [] =[]
takea n (x:xs) = x: takea (n-1) xs

-- 实现一个reverse
reversea :: [a]->[a]
reversea [] = []
reversea (x:xs)  = reversea xs ++[x] 

--实现一个repeate
repeatea :: a->[a]
repeatea n = n: repeatea n

--实现一个elem
elema ::(Eq a)=> a->[a]->Bool
elema n [] = False
elema n (x:xs) 
    |n == x = True
    |otherwise = elema n xs

--写个快排
sortkuai ::(Ord a)=>[a]->[a]
sortkuai [] = []
sortkuai (x:xs) = let smalloreq = [a | a<-xs,a<=x] --列表推导式中的filter，后面的是谓词
                      larger = [a | a<-xs,a>x]
                  in sortkuai smalloreq ++ [x] ++ sortkuai larger 

