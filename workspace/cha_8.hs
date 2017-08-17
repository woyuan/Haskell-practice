main = do 
    line<- getLine
    if null line
      then return()
      else do 
        putStrLn $ reverseWords line
        main

reverseWords :: String -> String
reverseWords lines = unwords .map reverse.words $lines