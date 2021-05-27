fact :: Int -> Int
fact 0 = 1
fact n = n * fact (n - 1)

main = do
  putStrLn "Enter a Number: "
  n <- readLn :: IO Int
  print (fact n)