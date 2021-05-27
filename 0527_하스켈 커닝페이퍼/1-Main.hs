{-
  main
-}
-- Comments in Haskell Single Line
{-
Multi Line Comments in Haskell
-}
import Data.List
import System.IO

maxInt = maxBound :: Int
main = do
    putStrLn "Hello, world!"
    putStrLn "Hello, what's your name?"
    name <- getLine
    putStrLn ("Hey " ++ name ++ ", you rock!")

--main = do
--    putStrLn "The base?"
--    base <- getLine
--    putStrLn "The height?"
--    height <- getLine
--    putStrLn ("The area of that triangle is " ++ show(0.5 * read base * read height))
