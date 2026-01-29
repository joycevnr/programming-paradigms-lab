rotate :: [String] -> Int -> [String]
rotate [] _ = []
rotate lista p = drop n lista ++ take n lista
    where n = p `mod` length lista
main :: IO ()
main = do
    let lista = ["a", "b", "c", "d", "e"]
    print (rotate lista 2)    -- ["c","d","e","a","b"]
    print (rotate lista (-2)) -- ["d","e","a","b","c"]
-- main = do
--     print(rotate ["a", "b", "c", "d", "e"] 2)