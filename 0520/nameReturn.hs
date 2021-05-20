import System.IO

nameReturn :: IO String
nameReturn = do putStr "What is your first name? "
                first <- getLine
                putStr "And your last name? "
                last <- getLine
                let full = first ++ " " ++ last
                putStrLn ("Pleased to meet you, " ++ full ++ "!")
                return full
main = do
 hSetBuffering stdout NoBuffering
 name <- nameReturn
 putStrLn ("See you, " ++ name ++ "!")