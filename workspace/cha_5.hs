--第五章啦哈哈哈哈哈，高阶函数

--实现一个高阶函数
applytwice :: (a->a) ->a ->a
applytwice f x = f (f x)

--实现一个zipwith
--函数声明不写也可以，ghc会自动推导
zipwitha :: (a->b->c)->[a]->[b]->[c]
zipwitha _ [] _ =[]
zipwitha _ _ [] = []
zipwitha f (x:xs) (y:ys) = f x y : zipwitha f xs ys

--复合函数来一发
fuhe  = zipwitha (zipwitha (*)) [[1,2,3],[2,3,4]] [[3,4,5],[4,5,6]]

--写个flip
flipa :: (a->b->c)->b->a->c
flipa f x y = f y x--写法一
-- flipa f = \x y ->f y x--写法二，λ的写法

--map配合filter
largesta :: Integer
largesta = head (filter p [100000,99999..])
    where p x = x `mod` 3829 ==0

--克拉链
chaina ::Int->[Int]
chaina n 
    |n<0 = error "dddddd"
    |n ==1 = [1]
    |odd n =n:chaina (n*3+1)
    |even n = n:chaina (n `div` 2)

-- 计算长克拉链的个数
numchaina ::Int
numchaina =  length (filter (>15) (map length (map chaina [100,99..1])))

--带有多个参数的函数
duocanshu = map (*) [0..]
-- (duocanshu !! 4) 5 测试用的

--折叠函数
qiuhe :: [Int] -> Int
qiuhe xs = foldl (\x acc ->x+acc) 0 xs

--如下这么写限制要多一点
keliqiuhe ::(Num a )=>[a]->a 
keliqiuhe = foldl (+) 0

--写一个map，用foldr
mapa :: (a->b)->[a]->[b]
mapa f xs = foldr (\x acc-> f x:acc) [] xs

--写另一个map，用foldl
mapaa :: (a->b)->[a]->[b]
mapaa f xs = foldl (\acc x ->acc ++ [f x]) [] xs

--再写一个elem
elemaa :: (Eq a)=> a ->[a]->Bool
elemaa y ys = foldr (\x ac->if x==y then True else ac) False ys

--一个reverse的例子
reverseaa  ::[a]->[a]
reverseaa xs = foldl (\acc x -> x:acc) []  xs

--写一个last函数 
lastaaa :: [a] -> a
lastaaa = foldll (\_ x-> x) 