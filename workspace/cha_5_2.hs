tak :: ( Num a ,Foldable t)=>t a-> t->t
tak n _ | n<= 0 = []
tak _ []=[]
tak n (x,xs) = x : tak (n-1) xs