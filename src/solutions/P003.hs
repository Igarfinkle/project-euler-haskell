{-|
    The prime factors of 13195 are 5, 7, 13 and 29.

    What is the largest prime factor of the number 600851475143?
-}
module Solutions.P003 where

myMaximum :: (Ord a) => [a] -> a
myMaximum [] = error "no maximum of empty list"
myMaximum [x] = x
myMaximum (x:xs) = if x > maxTail then x else maxTail where maxTail = myMaximum xs

minPrimeFactorFromD :: Integral t => t -> t -> t
minPrimeFactorFromD d n 
    | d * d > n = n
    | n `mod` d == 0 = d
    | otherwise = minPrimeFactorFromD (d + 1) n

myFactor :: Integer -> [Integer]
myFactor 1 = []
myFactor n =
    if n < 1 then error "can't factor nonpositive integer"
    else minPrimeFactor : myFactor (n `div` minPrimeFactor) where minPrimeFactor = minPrimeFactorFromD 2 n

solve::Integer
solve = myMaximum (myFactor 600851475143)
    