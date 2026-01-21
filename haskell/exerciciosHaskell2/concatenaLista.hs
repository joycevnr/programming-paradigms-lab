-- Defina uma função que recebe uma lista de listas e retorna a lista dos elementos unificados.
concatenaLista :: [[Int]] -> [Int]
concatenaLista [] = []
concatenaLista (x:xs) = x ++ concatenaLista xs 

main = do 
    print (concatenaLista [[1,2,3], [4,5], [6]])


-- concatenaLista :: [[Int]] -> [Int]
-- concatenaLista xss = [x | xs <- xss, x <- xs]

--explicação com list comprehension:
-- da esquerda para a direita:
-- xs <- xss: percorre cada sublista xs dentro da lista de listas xss(xs agora é cada sublista).
-- x <- xs: para cada elemento x dentro dessa sublista xs(x seria cada elemento de cada sublista).
-- [ x | ... ]: constrói uma nova lista com todos os x coletados, na ordem visitada.