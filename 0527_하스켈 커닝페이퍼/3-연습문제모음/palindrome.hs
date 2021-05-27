main = do
  putStrLn "Enter string"
  x <- getLine
  let y = reverse x
  if y == x then putStrLn ("Palindrome") else putStrLn ("Not palindrome")
