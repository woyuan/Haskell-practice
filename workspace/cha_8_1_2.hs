type Name = String
type Author = String
type ISBN = String 
type Price = Float


data Book = Book {name::Name, author::Author, isbn::ISBN,price::Price}

-- data Book = Book Name Author ISBN Price deriving (Show,Eq)

incrisePrice :: ([Book],[Book]) -> Book -> Float -> ([Book],[Book])
-- incrisePrice (b1,b2) b pri = ((b,b1),(Book (name b) (author b) (isbn b) (price b+ pri)))