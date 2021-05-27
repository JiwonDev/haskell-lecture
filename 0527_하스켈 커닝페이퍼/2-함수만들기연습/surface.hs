surface :: Float -> Float -> Float
surface radius height = 2 * pi * radius * (radius + height)

main = do
  putStrLn "Enter a Radius: "
  radius <- readLn :: IO Float
  putStrLn "Enter a Height: "
  height <- readLn :: IO Float
  print (surface radius height)