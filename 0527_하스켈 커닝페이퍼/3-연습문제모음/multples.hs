-- Assgn 6
main = do
  putStrLn ("Enter Number")
  x <- getLine
  let y = (read x :: Float)
  putStrLn ("Multple: ")
  print ([y * a | a <- [1 .. 20]])