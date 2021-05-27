import Data.List
import System.IO

sumOfHundred = sum[1..1000]
addNums = 5 + 5
subNums = 10 -4
multiplyNums = 5*5
divideNums = 20 / 5

modulusNums1 = mod 10 4 -- prefix operator
modulusNums2 = 10 `mod` 4 -- infix operator

tempNum = 625 :: Int
-- From integral is Needed sqrt takes in Floating Values
sqrtNums = sqrt(fromIntegral (tempNum))

-- LOGICAL EXPRESSIONS
trueAndFalse = True && False
trueOrFalse = True || False
negation = not(True)
