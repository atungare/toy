nthFib :: Int -> Int
nthFib = (fibs !!)
  where
    fibs = map fst $ iterate (\(x,y) -> (y,x+y)) (0,1)
