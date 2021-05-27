-- Average Marks
average :: [Int] -> Int
average xs = sum xs `div` length xs

main :: IO ()
main = do
  let list = [20, 30, 40, 50, 60]
  let x = average list :: Int
  if x >= 75
    then putStrLn "Grade A"
    else putStrLn "Grade B"
