-- vemAntes :: Eq a => a -> a -> [a] -> Bool
-- vemAntes _ _ [] = False
-- vemAntes v1 v2 (x:xs)
--     | x == v2   = False
--     | x == v1   = elem v2 xs
--     | otherwise = vemAntes v1 v2 xs



sucessivos :: Eq a => a -> a -> [a] -> Bool
sucessivos _ _ [] = False
sucessivos _ _ [_] = False
sucessivos v1 v2 (x:y:resto)
    | x == v1 && y == v2 = True
    | otherwise          = sucessivos v1 v2 (y:resto)