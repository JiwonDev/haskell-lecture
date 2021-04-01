digits :: Int -> Int
digits = length . show

square :: Num a => a -> a
square = (^ 2)
