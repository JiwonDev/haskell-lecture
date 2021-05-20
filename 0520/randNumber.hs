import System.Random
myPureFunction :: Float -> Float
myPureFunction x = 2 * x
main :: IO ()
main = do
-- num :: Float
num <- randomIO :: IO Float
-- This "extracts" the float from IO Float and binds it to the name num
print num