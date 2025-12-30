-- ======================================================
-- 04-Funcoes: Funções de Alta Ordem e Lambdas em Haskell
-- ======================================================

{-
  Funções de Alta Ordem (Higher-Order Functions) são funções que:
  - Recebem outras funções como parâmetros, OU
  - Retornam funções como resultado
  
  São fundamentais no paradigma funcional!
-}

-- ============================================
-- FUNÇÕES COMO VALORES
-- ============================================

{-
  Em Haskell, funções são "first-class citizens":
  podem ser passadas como argumentos, retornadas, e armazenadas
-}

-- Função simples
dobro :: Int -> Int
dobro x = x * 2

triplo :: Int -> Int
triplo x = x * 3

quadrado :: Int -> Int
quadrado x = x * x

-- Função que recebe outra função como parâmetro
aplicarDuasVezes :: (a -> a) -> a -> a
aplicarDuasVezes f x = f (f x)

-- Exemplo: aplicarDuasVezes dobro 3 = dobro (dobro 3) = 12

-- ============================================
-- MAP: Aplicar função a cada elemento
-- ============================================

{-
  map :: (a -> b) -> [a] -> [b]
  Aplica uma função a cada elemento de uma lista
-}

-- Dobrar todos os elementos de uma lista
dobrarLista :: [Int] -> [Int]
dobrarLista lista = map dobro lista

-- Elevar ao quadrado todos os elementos
quadradoLista :: [Int] -> [Int]
quadradoLista lista = map quadrado lista

-- Converter strings para maiúsculas (primeira letra)
primeiraLetraMaiuscula :: String -> String
primeiraLetraMaiuscula []     = []
primeiraLetraMaiuscula (x:xs) = toUpper x : xs
    where toUpper c = if c >= 'a' && c <= 'z' then toEnum (fromEnum c - 32) else c

capitalizarLista :: [String] -> [String]
capitalizarLista = map primeiraLetraMaiuscula

-- Calcular comprimentos de strings
comprimentos :: [String] -> [Int]
comprimentos = map length

-- Aplicar função a pares
somarPares :: [(Int, Int)] -> [Int]
somarPares = map (\(x, y) -> x + y)

-- Incrementar todos os elementos
incrementarTodos :: [Int] -> [Int]
incrementarTodos = map (+1)

-- ============================================
-- FILTER: Filtrar elementos de uma lista
-- ============================================

{-
  filter :: (a -> Bool) -> [a] -> [a]
  Mantém apenas elementos que satisfazem o predicado
-}

-- Filtrar números pares
filtrarPares :: [Int] -> [Int]
filtrarPares lista = filter ehPar lista
    where ehPar x = x `mod` 2 == 0

-- Filtrar números ímpares
filtrarImpares :: [Int] -> [Int]
filtrarImpares lista = filter ehImpar lista
    where ehImpar x = x `mod` 2 /= 0

-- Filtrar números positivos
filtrarPositivos :: [Int] -> [Int]
filtrarPositivos = filter (> 0)

-- Filtrar números maiores que n
maioresQue :: Int -> [Int] -> [Int]
maioresQue n = filter (> n)

-- Filtrar strings longas (mais de n caracteres)
stringsLongas :: Int -> [String] -> [String]
stringsLongas n = filter (\s -> length s > n)

-- Filtrar strings que começam com uma letra específica
comecamCom :: Char -> [String] -> [String]
comecamCom letra = filter (\s -> not (null s) && head s == letra)

-- Remover elementos vazios
removerVazios :: [String] -> [String]
removerVazios = filter (not . null)

-- ============================================
-- COMBINANDO MAP E FILTER
-- ============================================

-- Dobrar apenas os números pares
dobrarPares :: [Int] -> [Int]
dobrarPares lista = map (*2) (filter even lista)
    where even x = x `mod` 2 == 0

-- Quadrado dos números ímpares
quadradoImpares :: [Int] -> [Int]
quadradoImpares lista = map (^2) (filter odd lista)
    where odd x = x `mod` 2 /= 0

-- Comprimento das strings longas
comprimentoStringsLongas :: [String] -> [Int]
comprimentoStringsLongas lista = map length (filter (\s -> length s > 5) lista)

-- Somar apenas os positivos depois de dobrar
somarPositivosEmDobro :: [Int] -> Int
somarPositivosEmDobro lista = sum (map (*2) (filter (> 0) lista))

-- ============================================
-- LAMBDAS (FUNÇÕES ANÔNIMAS)
-- ============================================

{-
  Lambdas são funções anônimas (sem nome)
  Sintaxe: \param1 param2 -> expressão
  Úteis para funções simples e únicas
-}

-- Dobrar usando lambda
dobrarComLambda :: [Int] -> [Int]
dobrarComLambda lista = map (\x -> x * 2) lista

-- Filtrar pares usando lambda
paresComLambda :: [Int] -> [Int]
paresComLambda lista = filter (\x -> x `mod` 2 == 0) lista

-- Somar pares de números usando lambda
somarParesLambda :: [(Int, Int)] -> [Int]
somarParesLambda lista = map (\(x, y) -> x + y) lista

-- Multiplicar por n usando lambda
multiplicarPorN :: Int -> [Int] -> [Int]
multiplicarPorN n lista = map (\x -> x * n) lista

-- Lambda com múltiplos parâmetros
aplicarOperacao :: (Int -> Int -> Int) -> [Int] -> [Int] -> [Int]
aplicarOperacao f xs ys = map (\(x, y) -> f x y) (zip xs ys)

-- Lambda em filter e map combinados
processarLista :: [Int] -> [Int]
processarLista = map (\x -> x^2) . filter (\x -> x > 5)

-- ============================================
-- OUTRAS FUNÇÕES DE ALTA ORDEM
-- ============================================

-- FOLDR: reduzir lista da direita para esquerda
-- foldr :: (a -> b -> b) -> b -> [a] -> b

-- Somar usando foldr
somarFoldr :: [Int] -> Int
somarFoldr = foldr (+) 0

-- Multiplicar usando foldr
multiplicarFoldr :: [Int] -> Int
multiplicarFoldr = foldr (*) 1

-- Concatenar strings usando foldr
concatenarFoldr :: [String] -> String
concatenarFoldr = foldr (++) ""

-- Contar elementos usando foldr
contarFoldr :: [a] -> Int
contarFoldr = foldr (\_ acc -> acc + 1) 0

-- FOLDL: reduzir lista da esquerda para direita
-- foldl :: (b -> a -> b) -> b -> [a] -> b

-- Somar usando foldl
somarFoldl :: [Int] -> Int
somarFoldl = foldl (+) 0

-- Inverter lista usando foldl
inverterFoldl :: [a] -> [a]
inverterFoldl = foldl (\acc x -> x : acc) []

-- ZIPWITH: combinar duas listas com uma função
-- zipWith :: (a -> b -> c) -> [a] -> [b] -> [c]

-- Somar duas listas elemento por elemento
somarListas :: [Int] -> [Int] -> [Int]
somarListas = zipWith (+)

-- Multiplicar duas listas elemento por elemento
multiplicarListas :: [Int] -> [Int] -> [Int]
multiplicarListas = zipWith (*)

-- Comparar duas listas elemento por elemento
compararListas :: [Int] -> [Int] -> [Bool]
compararListas = zipWith (==)

-- TAKEWHILE: pegar elementos enquanto condição é verdadeira
pegarEnquantoMenorQue :: Int -> [Int] -> [Int]
pegarEnquantoMenorQue n = takeWhile (< n)

-- DROPWHILE: remover elementos enquanto condição é verdadeira
removerEnquantoMenorQue :: Int -> [Int] -> [Int]
removerEnquantoMenorQue n = dropWhile (< n)

-- ============================================
-- COMPOSIÇÃO DE FUNÇÕES
-- ============================================

{-
  O operador (.) permite compor funções
  (f . g) x = f (g x)
-}

-- Compor dobro e quadrado
dobroDoQuadrado :: Int -> Int
dobroDoQuadrado = dobro . quadrado

-- Compor múltiplas funções
processarNumero :: Int -> Int
processarNumero = (+10) . (*2) . (^2)

-- Usar composição com listas
processarListaComposicao :: [Int] -> [Int]
processarListaComposicao = map (*2) . filter (> 0) . map (+1)

-- ============================================
-- APLICAÇÃO PARCIAL (PARTIAL APPLICATION)
-- ============================================

{-
  Em Haskell, todas as funções são "curried":
  podem ser aplicadas parcialmente
-}

-- Função com dois parâmetros
somar :: Int -> Int -> Int
somar x y = x + y

-- Aplicação parcial: criar função que soma 10
somarDez :: Int -> Int
somarDez = somar 10

-- Aplicação parcial com operadores
dobrar :: Int -> Int
dobrar = (*2)

incrementar :: Int -> Int
incrementar = (+1)

multiplicarPorCinco :: Int -> Int
multiplicarPorCinco = (*5)

-- Aplicação parcial em filter
maioresQueCinco :: [Int] -> [Int]
maioresQueCinco = filter (> 5)

-- ============================================
-- FUNÇÕES QUE RETORNAM FUNÇÕES
-- ============================================

-- Criar função multiplicadora
criarMultiplicador :: Int -> (Int -> Int)
criarMultiplicador n = \x -> x * n

-- Criar função somadora
criarSomador :: Int -> (Int -> Int)
criarSomador n = \x -> x + n

-- Criar função de potência
criarPotenciador :: Int -> (Int -> Int)
criarPotenciador n = \x -> x ^ n

-- Usar as funções retornadas
multiplicarPor3 :: Int -> Int
multiplicarPor3 = criarMultiplicador 3

somarVinte :: Int -> Int
somarVinte = criarSomador 20

-- ============================================
-- EXEMPLOS PRÁTICOS
-- ============================================

-- Calcular fatorial usando foldr
fatorialFoldr :: Int -> Int
fatorialFoldr n = foldr (*) 1 [1..n]

-- Remover duplicatas de uma lista
removerDuplicatas :: Eq a => [a] -> [a]
removerDuplicatas = foldr (\x acc -> if x `elem` acc then acc else x:acc) []

-- Encontrar o máximo de uma lista usando foldr
maximoFoldr :: [Int] -> Int
maximoFoldr (x:xs) = foldr max x xs

-- Filtrar e transformar: pegar quadrados dos pares menores que 100
quadradosParesLimitados :: [Int] -> [Int]
quadradosParesLimitados = filter (< 100) . map (^2) . filter even

-- Calcular média de uma lista usando fold
mediaComFold :: [Double] -> Double
mediaComFold lista = foldl (+) 0 lista / fromIntegral (length lista)

-- Contar quantos elementos satisfazem condição
contarSe :: (a -> Bool) -> [a] -> Int
contarSe predicado = length . filter predicado

-- Aplicar lista de funções a um valor
aplicarFuncoes :: [a -> a] -> a -> a
aplicarFuncoes funcoes valor = foldl (\acc f -> f acc) valor funcoes

-- Pipeline de transformações
pipeline :: [Int] -> Int
pipeline = sum . map (*2) . filter odd . map (+1)

-- ============================================
-- FUNÇÃO MAIN PARA TESTAR
-- ============================================

main :: IO ()
main = do
    putStrLn "=== Funções de Alta Ordem em Haskell ==="
    
    putStrLn "\n--- MAP ---"
    putStrLn $ "dobrarLista [1,2,3,4,5] = " ++ show (dobrarLista [1,2,3,4,5])
    putStrLn $ "quadradoLista [1,2,3,4,5] = " ++ show (quadradoLista [1,2,3,4,5])
    putStrLn $ "comprimentos [\"a\",\"abc\",\"abcde\"] = " ++ show (comprimentos ["a","abc","abcde"])
    
    putStrLn "\n--- FILTER ---"
    putStrLn $ "filtrarPares [1,2,3,4,5,6,7,8] = " ++ show (filtrarPares [1,2,3,4,5,6,7,8])
    putStrLn $ "filtrarPositivos [-2,-1,0,1,2] = " ++ show (filtrarPositivos [-2,-1,0,1,2])
    putStrLn $ "maioresQue 5 [1,3,5,7,9] = " ++ show (maioresQue 5 [1,3,5,7,9])
    
    putStrLn "\n--- MAP + FILTER ---"
    putStrLn $ "dobrarPares [1,2,3,4,5,6] = " ++ show (dobrarPares [1,2,3,4,5,6])
    putStrLn $ "quadradoImpares [1,2,3,4,5] = " ++ show (quadradoImpares [1,2,3,4,5])
    
    putStrLn "\n--- LAMBDAS ---"
    putStrLn $ "dobrarComLambda [1,2,3] = " ++ show (dobrarComLambda [1,2,3])
    putStrLn $ "multiplicarPorN 5 [1,2,3] = " ++ show (multiplicarPorN 5 [1,2,3])
    
    putStrLn "\n--- FOLDR/FOLDL ---"
    putStrLn $ "somarFoldr [1,2,3,4,5] = " ++ show (somarFoldr [1,2,3,4,5])
    putStrLn $ "multiplicarFoldr [1,2,3,4,5] = " ++ show (multiplicarFoldr [1,2,3,4,5])
    putStrLn $ "fatorialFoldr 5 = " ++ show (fatorialFoldr 5)
    
    putStrLn "\n--- ZIPWITH ---"
    putStrLn $ "somarListas [1,2,3] [4,5,6] = " ++ show (somarListas [1,2,3] [4,5,6])
    putStrLn $ "multiplicarListas [1,2,3] [4,5,6] = " ++ show (multiplicarListas [1,2,3] [4,5,6])
    
    putStrLn "\n--- COMPOSIÇÃO ---"
    putStrLn $ "dobroDoQuadrado 5 = " ++ show (dobroDoQuadrado 5)
    putStrLn $ "processarNumero 3 = " ++ show (processarNumero 3)
    
    putStrLn "\n--- APLICAÇÃO PARCIAL ---"
    putStrLn $ "somarDez 15 = " ++ show (somarDez 15)
    putStrLn $ "multiplicarPor3 7 = " ++ show (multiplicarPor3 7)
    
    putStrLn "\n--- EXEMPLOS PRÁTICOS ---"
    putStrLn $ "removerDuplicatas [1,2,2,3,3,3,4] = " ++ show (removerDuplicatas [1,2,2,3,3,3,4])
    putStrLn $ "contarSe even [1,2,3,4,5,6] = " ++ show (contarSe even [1,2,3,4,5,6])
    putStrLn $ "pipeline [1,2,3,4,5,6,7,8,9,10] = " ++ show (pipeline [1,2,3,4,5,6,7,8,9,10])
