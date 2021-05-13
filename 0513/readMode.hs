import System.IO
main = do
handle <- openFile "happy.txt" ReadMode
contents <- hGetContents handle
putStr contents
hClose handle
