circum :: Float -> Float
circum n = 2 * n * pi

main = do
  putStrLn "Enter a Radius: "
  n <- readLn :: IO Float
  print (circum n)