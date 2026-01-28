--Defina uma função que recebe uma string e remove tudo, 
-- exceto as letras maiúsculas dela.

import Data.Char (isUpper)

maiusculas :: String -> String
maiusculas [] = []             
maiusculas (x:xs)
    | isUpper x = x : maiusculas xs          -- Se é maiúscula, mantém e continua
    | otherwise = maiusculas xs              -- Se não é, descarta e continua

main = do
    print (maiusculas "Olá Mundo 123!")
    print (maiusculas "HASKELL")
    print (maiusculas "abc123")