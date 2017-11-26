{-# LANGUAGE ScopedTypeVariables #-}
module Lib
    (
    myMaxRecursive,
    myMaxTailRecursive1,
    myMaxTailRecursive2,
    factorialRecursive,
    factorialTailRecursive,
    fibRecursive,
    fibTailRecursive
    
    ) where


-- Maximum from a list

-- myMaxRecursive : Naive implementation to get maximum from a list
myMaxRecursive :: (Bounded a, Ord a) => [a] -> a
myMaxRecursive [x] = x
myMaxRecursive (x:xs) = max x (myMaxRecursive xs)


-- myMaxTailRecursive1 : Tail Recursive Strict Evaluation
myMaxTailRecursive1 :: forall a. (Bounded a, Ord a) => [a] -> a
myMaxTailRecursive1 l@(x:xs) = myMaxAux l  (minBound :: a)
    where myMaxAux :: (Bounded a, Ord a) => [a] -> a -> a
          myMaxAux [x] a = max x a
          myMaxAux (x:xs) a = let m' = max x a in seq m' $ myMaxAux xs m'


-- myMaxTailRecursive2 : Tail Recursive Naive
-- Get list maximum using tail recursion
-- TODO : Implement it
myMaxTailRecursive2 :: (Bounded a, Ord a) => [a] -> a
myMaxTailRecursive2 l = head l -- TODO : Implement it


-- Factorial from a number

-- factorialRecursive: Factorial from a number
factorialRecursive :: Int -> Int
factorialRecursive 1 = 1
factorialRecursive n = n * (factorialRecursive (n -1))

-- factorialTailRecursive: Factorial from a number using tail recursion
-- TODO : Implement it
factorialTailRecursive :: Int -> Int
factorialTailRecursive 1 = 1
factorialTailRecursive n = n -- TODO : Implement it

-- Fibonacci of a number

-- Fibonacci : Recursive naive implementation
fibRecursive :: (Eq a, Num a) => a -> a
fibRecursive 1 = 1
fibRecursive 2 = 1
fibRecursive n = let firstTerm = fibRecursive (n - 1)
                     secondTerm = fibRecursive (n - 2) in firstTerm + secondTerm

-- Fibonacci : Tail Recursive naive implementation
-- TODO : Implement it
fibTailRecursive :: (Eq a, Num a) => a -> a
fibTailRecursive n =  n -- TODO: Implement it