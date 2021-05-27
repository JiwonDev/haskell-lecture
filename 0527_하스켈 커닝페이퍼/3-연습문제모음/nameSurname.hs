-- Assgn 8
main = do
  putStrLn "Hello, what's your name?"
  name <- getLine
  putStrLn "Hello, what's your Surname?"
  surname <- getLine
  putStrLn (name ++ " " ++ surname)
