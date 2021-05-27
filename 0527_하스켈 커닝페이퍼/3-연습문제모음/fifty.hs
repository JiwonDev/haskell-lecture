-- Assgn-7
main = do
  putStrLn ("Enter Number")
  x <- getLine
  let y = (read x :: Float)
  putStrLn ("Fifty Times: ")
  print ([y | a <- [1 .. 50]])