{-|
    A palindromic number reads the same both ways. 
    The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.
    Find the largest palindrome made from the product of two 3-digit numbers.
-}
module Solutions.P004 where

splitIntoDigits :: Integral a => a -> [a]
splitIntoDigits 0 = []
splitIntoDigits n = (n `mod` 10) : splitIntoDigits (n `div` 10)

buildFromDigits :: Integral p => [p] -> p
buildFromDigits [] = 0
buildFromDigits (x:xs) = x + (10 * buildFromDigits xs)

isPalindrome :: Eq a => [a] -> Bool
isPalindrome xs = and (zipWith (==) xs (reverse xs))
    

solve::Integer
solve = maximum $ filter (isPalindrome . splitIntoDigits) [ a * b | a <- [100..999], b <- [100..999]]
    