-- ============================================
-- 01-Basico: Tipos e Imutabilidade em Haskell
-- ============================================

{-
  Haskell é uma linguagem fortemente tipada e estaticamente tipada.
  Isso significa que cada expressão tem um tipo conhecido em tempo de compilação.
-}

-- ============================================
-- TIPOS BÁSICOS
-- ============================================

-- Int: números inteiros de precisão fixa (limitados)
numeroInt :: Int
numeroInt = 42

-- Integer: números inteiros de precisão arbitrária (ilimitados)
numeroGrande :: Integer
numeroGrande = 123456789012345678901234567890

-- Bool: valores booleanos (True ou False)
verdadeiro :: Bool
verdadeiro = True

falso :: Bool
falso = False

-- Float: números de ponto flutuante de precisão simples
numeroFloat :: Float
numeroFloat = 3.14

-- Double: números de ponto flutuante de precisão dupla
numeroDouble :: Double
numeroDouble = 3.14159265359

-- Char: caractere único
letra :: Char
letra = 'H'

-- String: sequência de caracteres (equivalente a [Char])
texto :: String
texto = "Haskell"

-- ============================================
-- OPERAÇÕES COM TIPOS BÁSICOS
-- ============================================

-- Operações aritméticas com Int
soma :: Int -> Int -> Int
soma x y = x + y

subtracao :: Int -> Int -> Int
subtracao x y = x - y

multiplicacao :: Int -> Int -> Int
multiplicacao x y = x * y

divisao :: Int -> Int -> Int
divisao x y = x `div` y  -- divisão inteira

resto :: Int -> Int -> Int
resto x y = x `mod` y  -- resto da divisão

-- Operações booleanas
eLogico :: Bool -> Bool -> Bool
eLogico x y = x && y

ouLogico :: Bool -> Bool -> Bool
ouLogico x y = x || y

negacao :: Bool -> Bool
negacao x = not x

-- Operações de comparação
maior :: Int -> Int -> Bool
maior x y = x > y

menor :: Int -> Int -> Bool
menor x y = x < y

igual :: Int -> Int -> Bool
igual x y = x == y

diferente :: Int -> Int -> Bool
diferente x y = x /= y

-- ============================================
-- IMUTABILIDADE
-- ============================================

{-
  Em Haskell, TODOS os valores são IMUTÁVEIS.
  Uma vez que uma variável é definida, seu valor não pode ser alterado.
  Isso é fundamental no paradigma funcional.
-}

-- Exemplo: uma vez definido, x sempre será 10
x :: Int
x = 10

-- Não é possível fazer x = 20 depois!
-- Isso não funciona em Haskell: x = 20

-- Em vez de modificar valores, criamos novos valores
valorOriginal :: Int
valorOriginal = 5

-- Para "modificar", criamos um novo valor
valorNovo :: Int
valorNovo = valorOriginal + 10  -- valorOriginal ainda é 5, valorNovo é 15

-- ============================================
-- EXPRESSÕES vs STATEMENTS
-- ============================================

{-
  Em Haskell, tudo é uma EXPRESSÃO que retorna um valor.
  Não há "statements" (comandos) como em linguagens imperativas.
-}

-- Exemplo de expressão condicional (sempre retorna um valor)
maximo :: Int -> Int -> Int
maximo a b = if a > b then a else b

-- ============================================
-- INFERÊNCIA DE TIPOS
-- ============================================

{-
  Haskell pode inferir automaticamente os tipos das expressões.
  Não é obrigatório declarar os tipos, mas é uma boa prática.
-}

-- Sem declaração de tipo (inferido automaticamente)
dobro n = n * 2  -- Haskell infere que n é um número (Num a => a)

-- Com declaração de tipo (mais claro e recomendado)
triplo :: Int -> Int
triplo n = n * 3

-- ============================================
-- TIPOS COMPOSTOS (TUPLAS)
-- ============================================

-- Tupla: agrupa valores de tipos diferentes
pessoa :: (String, Int, Bool)
pessoa = ("João", 25, True)

-- Funções para acessar elementos de uma tupla de 2 elementos
primeiroElemento :: (a, b) -> a
primeiroElemento (x, _) = x

segundoElemento :: (a, b) -> b
segundoElemento (_, y) = y

-- Exemplo com tupla de 3 elementos
coordenada3D :: (Double, Double, Double)
coordenada3D = (1.5, 2.3, 4.7)

-- ============================================
-- EXEMPLOS PRÁTICOS
-- ============================================

-- Calcular área de um círculo
areaCirculo :: Double -> Double
areaCirculo raio = pi * raio * raio

-- Verificar se um número é par
ehPar :: Int -> Bool
ehPar n = n `mod` 2 == 0

-- Verificar se um número é ímpar
ehImpar :: Int -> Bool
ehImpar n = not (ehPar n)

-- Calcular fatorial (recursivo)
fatorial :: Int -> Int
fatorial 0 = 1
fatorial n = n * fatorial (n - 1)

-- Função para testar no GHCi
main :: IO ()
main = do
    putStrLn "=== Tipos Básicos em Haskell ==="
    putStrLn $ "Int: " ++ show numeroInt
    putStrLn $ "Bool: " ++ show verdadeiro
    putStrLn $ "Double: " ++ show numeroDouble
    putStrLn $ "Char: " ++ show letra
    putStrLn $ "String: " ++ texto
    putStrLn "\n=== Operações ==="
    putStrLn $ "soma 5 3 = " ++ show (soma 5 3)
    putStrLn $ "dobro 7 = " ++ show (dobro 7)
    putStrLn $ "maximo 10 20 = " ++ show (maximo 10 20)
    putStrLn $ "ehPar 4 = " ++ show (ehPar 4)
    putStrLn $ "fatorial 5 = " ++ show (fatorial 5)
    putStrLn $ "areaCirculo 5.0 = " ++ show (areaCirculo 5.0)
