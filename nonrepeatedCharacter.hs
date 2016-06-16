nonRepeatedChar :: String -> Maybe Char
nonRepeatedChar s = if length singles == 0
                      then Nothing
                      else Just $ head singles
  where
    step i acc = if any (==i) acc
                    then filter (/=i) acc
                    else i:acc
    singles = foldr step "" s
