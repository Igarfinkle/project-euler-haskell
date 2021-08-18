{-|
    If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. 
    The sum of these multiples is 23.
    Find the sum of all the multiples of 3 or 5 below 1000.
-}
module P001 where 

solve :: Integer
solve = triangle (1000 `div` 3) + triangle (1000 `div` 5) - triangle (1000 `div` 15)
    where 
        triangle :: Integral a => a -> a
        triangle n = n * (n + 1) `div` 2