module Test (f1,f2,xor',and',or') where
f1::Int->Int
f1 n=n+1

f2::Int->Int
f2 n=n+2

xor',and',or'::Bool->Bool->Bool
xor' b1 b2 = not $ b1 == b2
and' True b1 = True
and' False _ = False
or' False b1 = b1
or' True _ = True