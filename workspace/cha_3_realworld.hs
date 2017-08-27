data Tree a = Empty | Node a (Tree a) (Tree a) deriving Show
--data Treee a =  (Maybe a) (Maybe (Treee a)) (Maybe(Treee a))

titysecond :: [a]->Maybe a
titysecond []= Nothing
titysecond (_:x:xs) = Just x

-- file: ch03/letwhere.hs
foo = x
    where x = y
            where y = 2

-- ishuiwen :: [a]->Bool
-- ishuiwen all@(x:xs) = reverse (take (length(all)/2 all)

length' :: [a]->Int
length' [] = 0
length' (x:xs)  = 1+length' xs 

gouzaohuiwen :: [a]->[a]
gouzaohuiwen []= []
gouzaohuiwen all@(x:xs) = all ++ reverse all