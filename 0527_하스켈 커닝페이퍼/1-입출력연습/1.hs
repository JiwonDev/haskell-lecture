-- Filter list sqrt > 2
main :: IO ()
main = do
  let final = filter (\x -> sqrt x < 2) [1 .. 20]
  print final