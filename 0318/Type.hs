-- types.hs
i :: Int
i = -78

biggestInt, smallestInt :: Int
biggestInt  = maxBound -- 자료형의 최대값을 반환하는 함수
smallestInt = minBound -- 자료형의 최소값을 반환하는 함수

-- 임의 크기 정수
n :: Integer
n = 1234567890987654321987340982334987349872349874534

19 - 27
(-3) * (-7) -- 음수를 사용할 때는 괄호를 사용한다.

-- 배정밀도 부동소수점 수
d1, d2 :: Double
d1 = 4.5387
d2 = 6.2831e-4

-- 불리언
b1, b2, b3 :: Bool
b1 = True
b2 = False
b3 = not (False || b1) && ( b2 || True)

-- 유니코드 문자
c1, c2, c3 :: Char
c1 = 'x'
c2 = 'Ø'
c3 = 'ダ'

-- 문자열
s :: String
s = "Hello, Haskell!"
