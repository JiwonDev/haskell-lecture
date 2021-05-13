import System.IO
main = do
contents <- readFile "happy.txt"
putStr contents
