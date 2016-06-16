module RPS where

import Data.List

options = ["rock", "paper", "scissors"]

roundsRecursive :: Int -> [String] -> [[String]]
roundsRecursive 0 _ = [[]]
roundsRecursive n opts = [x:xs | x <- opts, xs <- roundsRecursive (n-1) opts]

roundsFolding :: Int -> [String] -> [[String]]
roundsFolding n opts = foldr step [[]] [1..n]
  where step = (\_ acc -> [x:xs | x <- opts, xs <- acc])

roundsSequenceA :: Int -> [String] -> [[String]]
roundsSequenceA n opts = sequenceA $ take n $ repeat opts
