--Defina uma função para adicionar uma quantidade n de espaços à esquerda
--de uma dada String.

addEspacos :: String -> Int -> String
addEspacos x 0 = x
addEspacos x y = " " ++ addEspacos x (y-1)
main = do 
    print (addEspacos "Haskell" 5)


--add spaces
--1. Usando guards:
addEspacos :: String -> Int -> String
addEspacos str n
    | n <= 0 = str
    | otherwise = " " ++ addEspacos str (n - 1)

--2. Usando if-then-else:
addEspacos :: String -> Int -> String
addEspacos x y =
   if y == 0
   then x
   else " " ++ addEspacos x (y-1)
