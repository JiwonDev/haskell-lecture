-- Assgn-4
main = do
  putStrLn ("Enter Percentage")
  x <- getLine
  let y = (read x :: Float)
  if y > 33
    then putStrLn ("Student Pass")
    else putStrLn ("Fail")
