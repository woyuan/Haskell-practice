import Data.Char
splitLines [] = []
splitLines cs =
    let (pre, suf) = break isLineTerminator cs
    in  pre : case suf of
                ('\r':'\n':rest) -> splitLines rest
                ('\r':rest)      -> splitLines rest
                ('\n':rest)      -> splitLines rest
                _                -> []

isLineTerminator c = c == '\r' || c == '\n'

safeHead :: [a]->Maybe a
safeHead [] = Nothing
safeHead (x:_) = Just x

asInt xs = loop 0 xs
loop::Int->String->Int
loop acc []=acc
loop acc (x:xs)= loop (acc*10+digitToInt(x)) xs

filter' :: (a->Bool)->[a]->[a]
filter' p []=[]
filter' p (x:xs)
   | p x = x : filter' p xs
   | otherwise = filter' p xs

asIntfold :: String->Int
asIntfold xs = foldl (\acc x ->acc*10 + digitToInt(x)) 0 xs
    