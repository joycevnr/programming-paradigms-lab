-- ============================================
-- 03-Listas: Manipulação de Listas em Haskell
-- ============================================

{-
  Listas são a estrutura de dados fundamental em Haskell.
  São homogêneas (todos elementos do mesmo tipo) e imutáveis.
  Sintaxe: [1, 2, 3] ou 1:2:3:[]
-}

-- ============================================
-- CRIANDO LISTAS
-- ============================================

-- Lista vazia
listaVazia :: [Int]
listaVazia = []

-- Lista de inteiros
numeros :: [Int]
numeros = [1, 2, 3, 4, 5]

-- Lista de strings
nomes :: [String]
nomes = ["Alice", "Bob", "Carlos"]

-- Lista usando o operador cons (:)
numerosComCons :: [Int]
numerosComCons = 1 : 2 : 3 : 4 : 5 : []

-- ============================================
-- RANGES (INTERVALOS)
-- ============================================

{-
  Ranges são uma forma concisa de criar listas sequenciais
  Sintaxe: [inicio..fim] ou [inicio,passo..fim]
-}

-- Range simples de 1 a 10
umADez :: [Int]
umADez = [1..10]

-- Range de caracteres
alfabeto :: [Char]
alfabeto = ['a'..'z']

-- Range com passo (números pares de 2 a 20)
pares :: [Int]
pares = [2,4..20]

-- Range com passo (números ímpares de 1 a 19)
impares :: [Int]
impares = [1,3..19]

-- Range decrescente
contagemRegressiva :: [Int]
contagemRegressiva = [10,9..1]

-- Range infinito (só o início)
numerosNaturais :: [Int]
numerosNaturais = [1..]

-- Múltiplos de 5
multiplosDeCinco :: [Int]
multiplosDeCinco = [5,10..]

-- ============================================
-- COMPREENSÃO DE LISTAS (LIST COMPREHENSION)
-- ============================================

{-
  Compreensão de listas permite criar listas usando uma sintaxe matemática
  Formato: [expressão | geradores, condições]
  Similar à notação de conjuntos em matemática
-}

-- Quadrados de 1 a 10
quadrados :: [Int]
quadrados = [x^2 | x <- [1..10]]

-- Números pares de 1 a 20
paresAte20 :: [Int]
paresAte20 = [x | x <- [1..20], x `mod` 2 == 0]

-- Números ímpares de 1 a 20
imparesAte20 :: [Int]
imparesAte20 = [x | x <- [1..20], x `mod` 2 /= 0]

-- Múltiplos de 3 menores que 30
multiplosDeTres :: [Int]
multiplosDeTres = [x | x <- [1..30], x `mod` 3 == 0]

-- Dobro dos números pares de 1 a 10
dobroDosPares :: [Int]
dobroDosPares = [x * 2 | x <- [1..10], x `mod` 2 == 0]

-- Múltiplos geradores: pares de números
paresNumeros :: [(Int, Int)]
paresNumeros = [(x, y) | x <- [1..3], y <- [1..3]]

-- Combinações onde x < y
combinacoesOrdenadas :: [(Int, Int)]
combinacoesOrdenadas = [(x, y) | x <- [1..5], y <- [1..5], x < y]

-- Triângulo pitagórico: triplas (a,b,c) onde a² + b² = c²
trianguloPitagorico :: [(Int, Int, Int)]
trianguloPitagorico = [(a, b, c) | a <- [1..20], 
                                     b <- [1..20], 
                                     c <- [1..20], 
                                     a^2 + b^2 == c^2, 
                                     a < b]

-- Comprimento de strings em uma lista
comprimentosStrings :: [String] -> [Int]
comprimentosStrings strs = [length s | s <- strs]

-- Filtrar palavras com mais de 5 letras
palavrasLongas :: [String] -> [String]
palavrasLongas palavras = [p | p <- palavras, length p > 5]

-- Remover vogais de uma string
removerVogais :: String -> String
removerVogais str = [c | c <- str, c `notElem` "aeiouAEIOU"]

-- ============================================
-- LAZY EVALUATION (AVALIAÇÃO PREGUIÇOSA)
-- ============================================

{-
  Haskell usa avaliação preguiçosa (lazy evaluation):
  - Expressões são avaliadas apenas quando necessário
  - Permite trabalhar com estruturas infinitas
  - Melhora performance evitando cálculos desnecessários
-}

-- Lista infinita de uns
unsInfinitos :: [Int]
unsInfinitos = repeat 1

-- Lista infinita usando cycle (repete uma lista infinitamente)
cicloInfinito :: [Int]
cicloInfinito = cycle [1, 2, 3]

-- Todos os números naturais (infinito!)
naturais :: [Int]
naturais = [1..]

-- Todos os números pares (infinito!)
todosOsPares :: [Int]
todosOsPares = [2,4..]

-- Pegar os primeiros 10 elementos de uma lista infinita
primeiros10Naturais :: [Int]
primeiros10Naturais = take 10 [1..]

-- Pegar os primeiros 5 pares
primeiros5Pares :: [Int]
primeiros5Pares = take 5 [2,4..]

-- Sequência de Fibonacci infinita!
fibsInfinitos :: [Int]
fibsInfinitos = 0 : 1 : zipWith (+) fibsInfinitos (tail fibsInfinitos)

-- Primeiros 15 números de Fibonacci
primeiros15Fibs :: [Int]
primeiros15Fibs = take 15 fibsInfinitos

-- Números primos infinitos (Crivo de Eratóstenes)
primosInfinitos :: [Int]
primosInfinitos = crivo [2..]
    where crivo (p:xs) = p : crivo [x | x <- xs, x `mod` p /= 0]

-- Primeiros 20 primos
primeiros20Primos :: [Int]
primeiros20Primos = take 20 primosInfinitos

-- Potências de 2 infinitas
potenciasDeDois :: [Int]
potenciasDeDois = [2^n | n <- [0..]]

-- Primeiras 10 potências de 2
primeiras10Pot2 :: [Int]
primeiras10Pot2 = take 10 potenciasDeDois

-- ============================================
-- FUNÇÕES ÚTEIS COM LISTAS
-- ============================================

-- head: retorna o primeiro elemento
primeiroElemento :: [Int] -> Int
primeiroElemento lista = head lista

-- tail: retorna todos exceto o primeiro
restoDaLista :: [Int] -> [Int]
restoDaLista lista = tail lista

-- last: retorna o último elemento
ultimoElemento :: [Int] -> Int
ultimoElemento lista = last lista

-- init: retorna todos exceto o último
todosMenosUltimo :: [Int] -> [Int]
todosMenosUltimo lista = init lista

-- length: retorna o tamanho da lista
tamanhoLista :: [Int] -> Int
tamanhoLista lista = length lista

-- null: verifica se lista está vazia
estaVazia :: [a] -> Bool
estaVazia lista = null lista

-- reverse: inverte a lista
inverterLista :: [a] -> [a]
inverterLista lista = reverse lista

-- take: pega os primeiros n elementos
pegarPrimeiros :: Int -> [a] -> [a]
pegarPrimeiros n lista = take n lista

-- drop: remove os primeiros n elementos
removerPrimeiros :: Int -> [a] -> [a]
removerPrimeiros n lista = drop n lista

-- maximum e minimum: maior e menor elemento
maiorElemento :: [Int] -> Int
maiorElemento lista = maximum lista

menorElemento :: [Int] -> Int
menorElemento lista = minimum lista

-- sum: soma todos os elementos
somaElementos :: [Int] -> Int
somaElementos lista = sum lista

-- product: multiplica todos os elementos
produtoElementos :: [Int] -> Int
produtoElementos lista = product lista

-- elem: verifica se elemento está na lista
contemElemento :: Int -> [Int] -> Bool
contemElemento x lista = x `elem` lista

-- replicate: cria lista com n repetições de um elemento
replicar :: Int -> a -> [a]
replicar n x = replicate n x

-- zip: combina duas listas em pares
combinarListas :: [a] -> [b] -> [(a, b)]
combinarListas xs ys = zip xs ys

-- ============================================
-- OPERAÇÕES COM LISTAS (RECURSIVAS)
-- ============================================

-- Somar todos os elementos (implementação manual)
somaLista :: [Int] -> Int
somaLista []     = 0
somaLista (x:xs) = x + somaLista xs

-- Multiplicar todos os elementos
produtoLista :: [Int] -> Int
produtoLista []     = 1
produtoLista (x:xs) = x * produtoLista xs

-- Dobrar todos os elementos
dobrarElementos :: [Int] -> [Int]
dobrarElementos []     = []
dobrarElementos (x:xs) = (x * 2) : dobrarElementos xs

-- Filtrar elementos maiores que n
maioresQue :: Int -> [Int] -> [Int]
maioresQue _ []     = []
maioresQue n (x:xs)
    | x > n     = x : maioresQue n xs
    | otherwise = maioresQue n xs

-- Concatenar duas listas
concatenar :: [a] -> [a] -> [a]
concatenar [] ys     = ys
concatenar (x:xs) ys = x : concatenar xs ys

-- ============================================
-- EXEMPLOS PRÁTICOS
-- ============================================

-- Gerar tabuada de um número
tabuada :: Int -> [Int]
tabuada n = [n * x | x <- [1..10]]

-- Contar quantos números pares existem em uma lista
contarPares :: [Int] -> Int
contarPares lista = length [x | x <- lista, x `mod` 2 == 0]

-- Remover números negativos
removerNegativos :: [Int] -> [Int]
removerNegativos lista = [x | x <- lista, x >= 0]

-- Calcular média de uma lista
media :: [Double] -> Double
media lista = sum lista / fromIntegral (length lista)

-- Encontrar todos os divisores de um número
divisores :: Int -> [Int]
divisores n = [x | x <- [1..n], n `mod` x == 0]

-- Verificar se lista está em ordem crescente
estaOrdenada :: [Int] -> Bool
estaOrdenada []       = True
estaOrdenada [_]      = True
estaOrdenada (x:y:xs) = x <= y && estaOrdenada (y:xs)

-- Função main para testar
main :: IO ()
main = do
    putStrLn "=== Listas em Haskell ==="
    putStrLn "\n--- Ranges ---"
    putStrLn $ "umADez = " ++ show umADez
    putStrLn $ "pares = " ++ show pares
    putStrLn $ "contagemRegressiva = " ++ show contagemRegressiva
    
    putStrLn "\n--- Compreensão de Listas ---"
    putStrLn $ "quadrados = " ++ show quadrados
    putStrLn $ "paresAte20 = " ++ show paresAte20
    putStrLn $ "dobroDosPares = " ++ show dobroDosPares
    putStrLn $ "trianguloPitagorico (primeiros 3) = " ++ show (take 3 trianguloPitagorico)
    
    putStrLn "\n--- Lazy Evaluation (Listas Infinitas) ---"
    putStrLn $ "primeiros10Naturais = " ++ show primeiros10Naturais
    putStrLn $ "primeiros15Fibs = " ++ show primeiros15Fibs
    putStrLn $ "primeiros20Primos = " ++ show primeiros20Primos
    putStrLn $ "primeiras10Pot2 = " ++ show primeiras10Pot2
    
    putStrLn "\n--- Exemplos Práticos ---"
    putStrLn $ "tabuada 7 = " ++ show (tabuada 7)
    putStrLn $ "contarPares [1,2,3,4,5,6] = " ++ show (contarPares [1,2,3,4,5,6])
    putStrLn $ "media [10,20,30,40,50] = " ++ show (media [10,20,30,40,50])
    putStrLn $ "divisores 12 = " ++ show (divisores 12)
    putStrLn $ "estaOrdenada [1,2,3,4,5] = " ++ show (estaOrdenada [1,2,3,4,5])
    putStrLn $ "removerVogais \"Haskell Programming\" = " ++ removerVogais "Haskell Programming"
