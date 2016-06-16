commonChars :: [String] -> String
commonChars = foldl1 step
  where
    step acc i = filter (`elem` i) acc
