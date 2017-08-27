lastbutone ::[a]->a
lastbutone [] = error "d"
lastbutone all@(x:xs)
    | (null all) == True = error "w"
    | (null xs)==True = error "e"
    | (length xs )==1 = x
    | otherwise =lastbutone xs
--这个程序也能顺利编译过，问题在于模式匹配和守卫模式都只检查语法合法与否，有重复匹配的话只匹配第一项

sum' :: (Num a)  => [a]->a
sum' [] =0
sum' (x:xs)=x + sum' xs