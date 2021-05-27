-- Assgn 2
import Data.List
import Data.Typeable
import System.IO

maxInt = maxBound :: Int

main = do
  s1 <- getLine
  s2 <- getLine
  s3 <- getLine
  let x = (read s1 :: Int)
  let y = (read s2 :: Int)
  let z = (read s3 :: Int)
  print (x + y + z)
