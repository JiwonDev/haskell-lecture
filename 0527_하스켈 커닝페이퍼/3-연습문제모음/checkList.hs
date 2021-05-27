main = do
  putStrLn ("Enter student name:")
  x <- getLine
  let y = ["Eva", "Elsa", "Avery", "Elisa", "Michelle"]
  let a = elem x y
  if a == True then putStrLn ("Student found") else putStrLn ("Student not found")
