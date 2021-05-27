-- Assgn 1

import Data.List
import Data.Typeable
import System.IO

maxInt = maxBound :: Int

main = do
  putStrLn "Hello, world!"
  putStrLn "Hello, what's your name?"
  name <- getLine
  putStrLn ("Hey " ++ name)
  putStrLn (show (typeOf name))
