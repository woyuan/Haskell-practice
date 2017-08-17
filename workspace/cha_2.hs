cha2 = read "[1,2,3]" :: [Int]
cha2_2 = minBound :: (Int , Char, Bool)
-- 模式匹配简单例子
sayMe :: Int -> String
sayMe 1 = "One"
sayMe 2 = "Two"
sayMe x = "Not 1 or 2"

addvector :: (Double,Double)->(Double,Double)->(Double,Double)
addvector (x1,y1) (x2,y2) = (x1 + x1 , y1+ y2) 

testeven :: Int->Bool
testeven n | even n = True
           | odd n=False

-- as模式
filterfu :: String -> String 
filterfu [] = "Empty"
-- filterfu all@(x:x2:[])这个地方的方括号意味着空列表
filterfu all@(x:x2:_) = all ++ " " ++ [x] ++ " " ++ [x2]

-- guard模式
pangzi :: Double -> String
pangzi bmi 
    |bmi <=18.5 = "shouzi"
    |bmi <=20 = "haixing"
    |otherwise = "feizainihao "




-- 后缀函数改中缀
mycompare :: (Ord a)=> a->a->Ordering
a `mycompare` b
        | a>=b = GT
        | a==b = EQ
        | otherwise = LT


-- 探讨下where的作用域
nice::String
nice = "haha"

bad::String
bad = "caonimabi"

greet::String ->String
greet name
    | name == "Juan" = nice ++ "Juan"
    | otherwise = bad ++ name


-- bmi指数计算,where写函数的用法
calcbmi::[(Double,Double)]->[Double]
calcbmi xs  = [bmi w h|(w,h)<-xs]
    where bmi wei hei = wei / hei^2

-- where与case联系
descriLi :: String -> String
descriLi ls = "the list is " ++ case ls of [] ->"emptyu"
                                           (x:[]) -> "singlre"
                                           xs ->"henchang a"

-- 下面用where写一个
descriLii :: String ->String
descriLii ls = "the list is " ++ what ls 
    where what [] = "emptyu"
          what [x] = "singlre"
          what xs = "henchang a"