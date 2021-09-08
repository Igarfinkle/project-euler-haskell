{- |
    The sum of the squares of the first ten natural numbers is,
        1^2 + 2^2 + ... + 10^2 = 385
    The square of the sum of the first ten natural numbers is,
        (1 + 2 + ... + 10)^2 = 55^2 = 3025
    Hence the difference between the sum of the squares of the first ten natural numbers and the square of the sum is $3025 - 385 = 2640$.

    Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.
-}

module Solutions.P006 where    

triangle :: Integral a => a -> a
triangle n = n * (n + 1) `div` 2

squarePyramidal :: Integral a => a -> a
squarePyramidal n = n * (n + 1) * (2 * n + 1) `div` 6

solve::Integer
solve = (triangle 100 ^ (2 :: Integer)) - squarePyramidal 100
    