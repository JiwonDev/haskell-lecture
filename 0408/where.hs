main = do
  putStrLn "Hello, what is your name?"
  name <- getLine
  putStrLn (message name)
    where
    greatlanguage   = "I think Haskell is a great programming language."
    message "Simon" = greatlanguage
    message "John"  = greatlanguage
    message "Phil"  = greatlanguage
    message "Koen"  = "I think debugging Haskell is fun."
    message _       = "Sorry, I don't know you."
