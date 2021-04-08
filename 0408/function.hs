-- 	라인 주석
{-
	블럭 주석
-}

digits :: Int -> Int
digits = length . show

square :: Num a => a -> a
square = (^ 2)

lucky :: Integral a => a -> String
lucky 7 = "LUCKY NUMBER SEVEN!"
lucky x = "Sorry, you're out of luck, pal!"

sayMe :: (Integral a) => a -> String
sayMe 1 = "One!"
sayMe 2 = "Two!"
sayMe 3 = "Three!"
sayMe 4 = "Four!"
sayMe 5 = "Five!"
sayMe x = "Not between 1 and 5"

charName :: Char -> String
charName 'a' = "Albert"
charName 'b' = "Broseph"
charName 'c' = "Cecil"

ultimate :: Int -> String -- 함수 ultimate를 정의한다.
ultimate 42 = "인생, 우주, 모든 것의 해답" -- 패턴 42에 매치했을 경우
ultimate n = show n

maybeToList :: Maybe a -> [a]
maybeToList Nothing = [] --패턴 Nothing에 매치한 경우
maybeToList (Just x) = [x] -- x:[] 패턴 Just x에 매치한 경우

listToMaybe :: [a] -> Maybe a
listToMaybe [ ] = Nothing --패턴 Nothing에 매치한 경우
listToMaybe (a : as) = Just a --패턴 Just a에 매치한 경우

deeping :: String -> String
deeping (' ':' ':xs) = "    " ++ xs -- 선두 스페이스 2문자 이상의 패턴
deeping (' ':xs) = "  " ++ xs -- 선두 스페이스 1문자의 패턴
deeping xs = xs -- 그 외의 패턴

deeping' :: String -> String
deeping' s@(' ':' ':xs) = "  " ++ s -- 선두 스페이스 2문자 이상의 패턴
deeping' s@(' ':xs) = " " ++ s -- 선두 스페이스 1문자의 패턴
deeping' s = s -- 그 외의 패턴

deeping'' :: String -> String
deeping'' s@(' ':' ':_) = "     " ++ s -- 선두 스페이스 2문자 이상의 패턴
deeping'' s@(' ':_) = "  " ++ s  -- 선두 스페이스 1문자의 패턴
deeping'' s = s -- 그 외의 패턴

firstLetter :: String -> String
firstLetter "" = "Empty string, whoops!"
firstLetter all@(x:xs) = "The first letter of " ++ all ++ " is " ++ [x]

addVectors :: (Double, Double) -> (Double, Double) -> (Double, Double)
addVectors a b = (fst a + fst b, snd a + snd b)

addVectors' :: (Double, Double) -> (Double, Double) -> (Double, Double)
addVectors' (x1, y1) (x2, y2) = (x1 + x2, y1 + y2) -- 패턴 매칭

bmiTell :: (RealFloat a) => a -> String
bmiTell bmi
  | bmi <= 18.5 = "You're underweight, you emo, you!"
  | bmi <= 25.0 = "You're supposedly normal. Pfft, I bet you're ugly!"
  | bmi <= 30.0 = "You're fat! Lose some weight, fatty!"
  | otherwise = "You're a whale, congratulations!"

bmiTell' :: (RealFloat a) => a -> a -> String
bmiTell' weight height
 | weight / (height ^ 2) <= 0.00185 = "You're underweight, you emo, you!"
 | weight / (height ^ 2) <= 0.00250 = "You're supposedly normal. Pfft, I bet you're ugly!"
 | weight / (height ^ 2) <= 0.00300 = "You're fat! Lose some weight, fatty!"
 | otherwise = "You're a whale, congratulations!"

bmiTell'' :: (RealFloat a) => a -> a -> String
bmiTell'' weight height
 | bmi <= 0.00185 = "You're underweight, you emo, you!"
 | bmi <= 0.00250 = "You're supposedly normal. Pfft, I bet you're ugly!"
 | bmi<= 0.00300 = "You're fat! Lose some weight, fatty!"
 | otherwise = "You're a whale, congratulations!"
 where bmi = weight / height ^2

bmiTell''' :: (RealFloat a) => a -> a -> String
bmiTell''' weight height
 | bmi <= skinny = "You're underweight, you emo, you!"
 | bmi <= normal = "You're supposedly normal. Pfft, I bet you're ugly!"
 | bmi<= fat = "You're fat! Lose some weight, fatty!"
 | otherwise = "You're a whale, congratulations!"
 where bmi = weight / height ^2
       skinny = 18.5
       normal = 25.0
       fat = 30.0

bmiTell'''' :: (RealFloat a) => a -> a -> String
bmiTell'''' weight height
 | bmi <= skinny = "You're underweight, you emo, you!"
 | bmi <= normal = "You're supposedly normal. Pfft, I bet you're ugly!"
 | bmi<= fat = "You're fat! Lose some weight, fatty!"
 | otherwise = "You're a whale, congratulations!"
 where bmi = weight / height ^2
       (skinny, normal, fat) = (18.5, 25.0, 30.0) 
--함수의 매개 변수 내에서 직접 이러한 패턴매칭을 할 수 있다







max' :: (Ord a) => a -> a -> a
max' a b
 | a > b = a
 | otherwise = b

myCompare :: (Ord a) => a -> a -> Ordering
a `myCompare` b
 | a > b = GT
 | a == b = EQ
 | otherwise = LT

safeSqrt :: (Ord a, Floating a) => a -> Maybe a
safeSqrt x
 | x < 0 = Nothing 
 | otherwise = Just (sqrt x)  -- 이 라인을 주석 처리하면 망라하지 않은 조건이 된다.
                              -- otherwise는 항상 참이 되는 조건이다.

caseOfFirstLetter :: String -> String
caseOfFirstLetter "" = "empty" -- 빈 문자열에 패턴 매치
caseOfFirstLetter (x:_)
 | 'a' <= x && x <= 'z' = "lower"
 | 'A' <= x && x <= 'Z' = "upper"
 | otherwise = "other"

caseOfFirstLetter' :: String -> String
caseOfFirstLetter' str =
   case str of
       "" -> "" -- 빈 문자열에 패턴 매치
       (x:xs) -> if 'a' <= x && x <= 'z'
                 then "lower"
                 else if 'A' <= x && x <= 'Z'
                      then "upper"
                      else "other"

caseOfFirstLetter'' :: String -> String
caseOfFirstLetter'' str =
    case str of
         "" -> "" -- 빈 문자열에 패턴 매치
         (x:xs) | 'a' <= x && x <= 'z' -> "lower"
                | 'A' <= x && x <= 'Z' -> "upper"
                | otherwise ->"other"

cylinder :: Double -> Double -> Double
cylinder r h = 
   let sideArea = 2 * pi * r * h
       topArea = pi * r ^ 2
   in sideArea + 2 * topArea

-- 이름과 성을 받아서 이니셜을 반환하는 함수
initials :: String -> String -> String
initials firstname lastname = [f] ++ " . " ++ [l] ++ "."
  where (f:fs) = firstname
        (l:ls) = lastname


-- 몸무게/키 페어 리스트를 받아서 BMI 리스트를 반환하는 함수
calcBmis :: [(Double, Double)] -> [Double]
calcBmis xs = [bmi w h | (w, h) <- xs]
   where bmi weight height = weight / height ^ 2
-- bmi 함수를 사용하는 이유는 이 함수의 매개변수로 하나의 BMI만 계산할 수 없기 때문이다


caseOfFirstLetter''' :: String -> String
caseOfFirstLetter''' "" = "empty" -- 빈 문자열에 패턴 매치
caseOfFirstLetter''' (x:xs)
 | inRange 'a' 'z' = "lower"
 | inRange 'A' 'Z' = "upper"
 | otherwise = "other" 
 where inRange lower upper = lower <= x && x <= upper


















