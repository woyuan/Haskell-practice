data Point = Point Float Float deriving (Show)
data Shape = Circle Point Float | Rectangle Point Point deriving (Show)
data Person = Person{firstname :: String,lastname :: String, age::Int, height::Float , phonenumber::String,flavor::String} deriving (Show)

area :: Shape -> Float
area (Circle _ r) = pi * r ^2
area (Rectangle (Point x1 y1) (Point x2 y2) )= (abs $x2-x1) *(abs $ y2 - y1)

data Vector a = Vector a a a deriving (Show)
 vplus::(Num a) => Vector a -