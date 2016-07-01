import Data.List (nub)

powerset :: (Eq a) => [a] -> [[a]]
powerset = foldr step [[]]
  where
    step item acc = nub ([]:([item:x | x <- acc] ++ acc))
