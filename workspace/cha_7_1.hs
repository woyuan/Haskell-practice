import qualified Data.Map as Map
data Point = Point Float Float deriving (Show)
data Shape = Circle Point Float| Rectangle Point Point deriving (Show)
--类型是shape
area::Shape->Float

-- area (Circle _ _ r) = pi*r ^ 2
-- area (Rectangle x1 x2 y1 y2) = (abs $ x2 -x1) * (abs $ y2 -y1)

area (Circle _ r) = pi * r^ 2
area (Rectangle (Point x1 y1) (Point x2 y2))  = (abs $ x2 -x1) * (abs $ y2 -y1)

--记录语法
data Person = Person {firstname :: String,lastname :: String} deriving (Show)

--类型构造器
--data Maybe a = Nothing | Just a
--data Either a b = Left a | Right b deriving (Eq,Ord,Read,Show)  这两行东西在prelude里面有了所以不要在这个地方写出来
data Cat = Cat {sex :: String,age::Int, appear::String} deriving (Eq,Read,Show)


data LockerState = Taken |Free deriving (Show,Eq)
type Code = String
type LockerMap = Map.Map Int (LockerState,Code)
lockerLookup :: Int ->LockerMap->Either String Code
lockerLookup lockerNumber map = case Map.lookup lockerNumber map of
    Nothing -> Left $ "Locker" ++ show lockerNumber ++ "bu cun zai "
    Just (state,code)-> if state /= Taken
                        then Right code
                        else Left $ "Locker" ++ show lockerNumber ++ "you ren yong"