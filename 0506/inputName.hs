import System.IO
main = do
putStrLn "What's your name?"
buf <- getLine
putStrLn ("Hello, " ++ buf)
