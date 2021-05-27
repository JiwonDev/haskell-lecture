import Data.List
import System.IO

numberLists1 = [1,2,3,4,5]
numberLists2 = [10,11,12,13,14,15]

-- Concat 리스트
concatLists = numberLists1 ++ numberLists2

-- list 생성
listCreate  = 10 : 20 : 30 : 40 : 50 : []

-- Length
lengthOfLists = length listCreate

-- Reverse
reverseList = reverse listCreate

-- empty 확인
isEmptyList = null listCreate

-- 요소 접근 list[2]
valOfList = numberLists1 !! 2

-- 첫번째 값 get
headOfList = head listCreate

-- 마지막 값 get
lastOfList = last listCreate

-- 마지막을 뺀 나머지 요소들 가져오기
initList = init listCreate

-- take (0~n개 까지 리스트 추출)
firstThreeElements = take 3 listCreate

-- drop(n~마지막까지 리스트 추출)
lastThreeElements = drop 3 listCreate

-- 리스트 안에 요소 확인
is10inList = 10 `elem` listCreate

-- 최대값
maxOfList = maximum listCreate

-- 최소값
minOfList = minimum listCreate

-- Product, 전체 곱셈
productOfList = product numberLists1

-- 리스트 제너레이팅(생성)
zeroToTwenty = [0..20]

-- 짝수(Even) 리스트 만들기
evenList = [0,2 .. 20]

-- 문자(Char) 리스트 만들기
charList = ['A','C' .. 'Z']

-- 반복하기 [2,2,2,2,2,2,2,2,2,2]
many2s = replicate 10 2

-- 리스트 생성자
listTimes2 = [ x*2 | x <- [1..10]]

-- 리스트 생성자 - 조건문
listTimes4Cond = [ x*4 | x <- [1..10] , x*4 <= 20]

-- 정렬
sortedList = sort [4,1,78,2,72,62,8,97]

-- 두 리스트 덧셈 (Zip, 각각 같은 위치 요소들을 더함)
sumOfLists = zipWith (+) [1..10] [11..20]
