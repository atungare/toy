powerset :: [a] -> [[a]]
powerset [] = [[]]
powerset (x:xs) = pxs ++ map (x:) pxs
  where pxs = powerset xs
