--import Data.List (transpose)
data Dir = L | R

rotate :: Dir -> [[a]] -> [[a]]
rotate L = reverse' . transpose'
rotate R = transpose' . reverse'

reverse' :: [a] -> [a]
reverse' = foldl (flip (:)) []

transpose' :: [[a]] -> [[a]]
transpose' [] = []
transpose' l@((x:[]):_) = [map head l]
transpose' xs = (map head xs):(transpose' (map tail xs))
