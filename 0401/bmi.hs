bmi :: Float -> Float -> String
bmi weight height
  | x <= 18.5 = "Underweight"
  | x <= 25 = "Normal"
  | x <= 30 = "Overweight"
  | otherwise = "Obese"
  where
    x = weight / (height * height)

main = do
  putStrLn "Enter a Weight : "
  w <- readLn :: IO Float
  putStrLn "Enter a Height : "
  h <- readLn :: IO Float
  print (bmi w h)
