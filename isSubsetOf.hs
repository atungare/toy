isSubsetOf :: (Eq a) => [a] -> [a] -> Bool
isSubsetOf maybeSub maybeSuper = all (`elem` maybeSuper) maybeSub
