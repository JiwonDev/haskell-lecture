import System.Random
randomList :: Int -> IO([Int])
randomList 0 = return []
randomList n = do
 r <- randomRIO (1,6)
 rs <- randomList (n-1)
 return (r:rs) 
main :: IO ()
main = do
 ls <- randomList 6
 putStrLn $ show $ take 6 ls
