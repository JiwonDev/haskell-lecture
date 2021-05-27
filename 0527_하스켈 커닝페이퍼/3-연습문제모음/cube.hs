-- Assgn-3
main = do
  putStrLn ("Enter Number")
  x <- getLine
  let z = (read x :: Float)
  putStrLn ("Cube is: " ++ show (z ^ 3))