fibstep :: Num a => (a,a) -> (a,a)
fibstep (u,v)  = (v,u+v)

fibpiar :: (Num a,Eq a) =>a -> (a,a)
fibpiar 0 = (0,1)
fibpiar n = fibstep (fibpiar(n-1))