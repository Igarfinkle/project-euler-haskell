{-# LANGUAGE LambdaCase #-}
module Main where

import Control.Monad (unless)
import Solutions.P001 (solve)
import Solutions.P002 (solve)
import Solutions.P003 (solve)

import Data.Maybe (isNothing, fromJust)

main :: IO ()
main = do 
    mapM_ 
        ( \k -> do
            let answerk = answer k
            unless 
                (isNothing answerk)
                (putStrLn ("problem " ++ show k ++ " answer " ++ show (fromJust answerk)))
        )
        [1..800]




answer :: Integer -> Maybe Integer
answer =  \case
    1 -> Just Solutions.P001.solve
    2 -> Just Solutions.P002.solve
    3 -> Just Solutions.P003.solve
    _ -> Nothing