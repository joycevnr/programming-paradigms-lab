-- eliminaDuplicadas :: Eq a => [a] -> [a]
-- eliminaDuplicadas (x:xs)
--     | x `elem` xs = eliminaDuplicadas xs
--     | otherwise   = x : eliminaDuplicadas xs

-- Elimina elementos consecutivos duplicados de uma lista.
compress :: Eq a => [a] -> [a]
compress []  = []
compress [x] = [x]

compress (x:y:xs)
    | x == y    = compress (y:xs)      -- Iguais? Joga o x fora, continua do y.
    | otherwise = x : compress (y:xs)  -- Diferentes? Guarda o x, continua do y.

-- Retorna uma sublista de 'lista' do índice 'ini' até o índice 'fim' (exclusivo).
slicing :: [a] -> Int -> Int -> [a]
slicing lista ini fim = take (fim - ini) (drop ini lista)

main :: IO ()

main = do
    print (compress "aaabccaadeeee")  -- "abcade"
    print (slicing [1,2,3,4,5] 1 4)   -- [2,3,4]



-- drop function removes elements from the beginning of a list. drop ini lista discards the first ini elements and returns the rest of the list. For example, drop 3 [1,2,3,4,5,6] returns [4,5,6]. This effectively positions us at the starting index ini by eliminating everything before it.

-- take function extracts a specified number of elements from the beginning of a list. take n lista returns the first n elements. For example, take 2 [4,5,6,7,8] returns [4,5]. 