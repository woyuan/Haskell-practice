factorial :: Integer ->Integer
factorial n = if n < 0 then error "Wrong Input" else if n==0 then 1 else (n * factorial (n-1))
