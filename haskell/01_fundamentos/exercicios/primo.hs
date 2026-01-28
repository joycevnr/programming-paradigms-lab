-- Defina a função ehprimo que verifica se um determinado inteiro positivo é primo.
--- prime number é um número inteiro maior que 1 que só é divisível por 1 e por ele mesmo.

proxDivisor :: Int -> Int -> Int 
proxDivisor p i 
    | mod p i == 0 = i  -- Se i divide p, retorna i
    | otherwise = proxDivisor p (i+1)

primo :: Int -> Bool
primo 1 = False
primo p 
    | proxDivisor p 2 == p = True 
    | otherwise = False 

main :: IO()
main = print (primo 7)