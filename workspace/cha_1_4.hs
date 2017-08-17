boombang xs = [if x<10 then "Boom!" else "Bang!" | x<-xs,even x]

mingzii = ["liyade","guorui","gouridefanyao","liujingwei"]
dongzuoo = ["chou","cha","tong","ri"]
laiyifa mingz dongzu = [ingzi ++" " ++ ongzuo ++" " ++ ingzi | ingzi<-mingz,ongzuo<-dongzu]

length' xs = sum [1 | _ <- xs]

removeUpper xs = [c | c<-xs,(elem c ['a'..'z'])||c == ' ' ]

xxs = [[1,24,1],[2,3,3,1,2],[8,3,5,2,23]]
list_list xs = [[k |k<-s,even k ] | s<-xs,length s >4]

triple = [(a,b,c)|a<-[1..10],b<-[1..a],c<-[1..b],a^2==b^2+c^2]