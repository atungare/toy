--This would be too easy:
--import Data.List (insert)
--bubbleSort = foldr insert []

bubbleSort :: (Ord a) => [a] -> [a]
bubbleSort = foldr step []
  where
    step i []  = [i]
    step i acc@(x:xs) = case compare i x of
      GT -> x:(step i xs)
      _  -> i:acc
