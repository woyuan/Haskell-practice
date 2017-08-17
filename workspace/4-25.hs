head' :: Show a => [a]->a
head' [] = error "dfaf"
head' (x:_) = x