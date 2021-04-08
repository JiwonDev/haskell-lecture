-- if를 사용 할수는 있지만, 함수형 프로그래밍에서 권장하는 방법은 아니다.
main = do
  putStrLn "Hello, what is your name?"
  name <- getLine
  if name == "Simon" || name == "John" || name == "Phil"
     then putStrLn "I think Haskell is a great programming language."
     else if name == "Koen"
             then putStrLn "I think debugging Haskell is fun."
             else putStrLn "Sorry, I don't know you."
