-- ================================================
-- 02-Controle: Estruturas de Controle em Haskell
-- ================================================

{-
  Haskell oferece várias formas de controle de fluxo:
  - If/Then/Else
  - Guardas (Guards)
  - Pattern Matching (Casamento de Padrões)
-}

-- ============================================
-- IF/THEN/ELSE
-- ============================================

{-
  Em Haskell, if é uma EXPRESSÃO, não um statement.
  Isso significa que sempre retorna um valor.
  O else é OBRIGATÓRIO!
-}

-- Exemplo básico de if/then/else
absoluto :: Int -> Int
absoluto n = if n >= 0 then n else -n

-- If/then/else aninhado
classificarNumero :: Int -> String
classificarNumero n = 
    if n > 0 then 
        "Positivo"
    else if n < 0 then 
        "Negativo"
    else 
        "Zero"

-- Múltiplas condições
tipoTriangulo :: Int -> Int -> Int -> String
tipoTriangulo a b c = 
    if a == b && b == c then
        "Equilátero"
    else if a == b || b == c || a == c then
        "Isósceles"
    else
        "Escaleno"

-- ============================================
-- GUARDAS (GUARDS)
-- ============================================

{-
  Guardas são uma alternativa mais elegante ao if/then/else
  quando há múltiplas condições. São indicadas pelo símbolo |
-}

-- Exemplo básico com guardas
absolutoGuarda :: Int -> Int
absolutoGuarda n
    | n >= 0    = n
    | otherwise = -n

-- Classificação de nota (mais legível que if/else aninhado)
classificarNota :: Double -> String
classificarNota nota
    | nota >= 9.0 = "Excelente"
    | nota >= 7.0 = "Bom"
    | nota >= 5.0 = "Regular"
    | nota >= 3.0 = "Ruim"
    | otherwise   = "Muito Ruim"

-- Cálculo de IMC com guardas
calcularIMC :: Double -> Double -> String
calcularIMC peso altura
    | imc < 18.5 = "Abaixo do peso"
    | imc < 25.0 = "Peso normal"
    | imc < 30.0 = "Sobrepeso"
    | otherwise  = "Obesidade"
    where imc = peso / (altura ^ 2)  -- cláusula where para definir valor local

-- Função para calcular imposto com faixas
calcularImposto :: Double -> Double
calcularImposto salario
    | salario <= 1500   = 0
    | salario <= 3000   = salario * 0.10
    | salario <= 5000   = salario * 0.15
    | otherwise         = salario * 0.20

-- Comparação de três números
maiorDeTres :: Int -> Int -> Int -> Int
maiorDeTres a b c
    | a >= b && a >= c = a
    | b >= c           = b
    | otherwise        = c

-- ============================================
-- PATTERN MATCHING (CASAMENTO DE PADRÕES)
-- ============================================

{-
  Pattern Matching permite definir funções por casos,
  baseando-se na estrutura dos dados de entrada.
  É muito poderoso e idiomático em Haskell.
-}

-- Exemplo básico: definir casos específicos
descreverNumero :: Int -> String
descreverNumero 0 = "Zero"
descreverNumero 1 = "Um"
descreverNumero 2 = "Dois"
descreverNumero _ = "Outro número"  -- _ é um wildcard (coringa)

-- Pattern matching com operações
fatorial :: Int -> Int
fatorial 0 = 1
fatorial n = n * fatorial (n - 1)

-- Fibonacci com pattern matching
fibonacci :: Int -> Int
fibonacci 0 = 0
fibonacci 1 = 1
fibonacci n = fibonacci (n - 1) + fibonacci (n - 2)

-- Pattern matching com Booleanos
negar :: Bool -> Bool
negar True  = False
negar False = True

-- Operação E lógico com pattern matching
eLogico :: Bool -> Bool -> Bool
eLogico True True = True
eLogico _ _       = False

-- Operação OU lógico com pattern matching
ouLogico :: Bool -> Bool -> Bool
ouLogico False False = False
ouLogico _ _         = True

-- ============================================
-- PATTERN MATCHING COM TUPLAS
-- ============================================

-- Extrair primeiro elemento de uma tupla
primeiro :: (a, b) -> a
primeiro (x, _) = x

-- Extrair segundo elemento de uma tupla
segundo :: (a, b) -> b
segundo (_, y) = y

-- Somar os componentes de um par
somarPar :: (Int, Int) -> Int
somarPar (x, y) = x + y

-- Calcular distância entre dois pontos 2D
distancia :: (Double, Double) -> (Double, Double) -> Double
distancia (x1, y1) (x2, y2) = sqrt ((x2 - x1)^2 + (y2 - y1)^2)

-- ============================================
-- PATTERN MATCHING COM LISTAS
-- ============================================

-- Verificar se lista está vazia
estaVazia :: [a] -> Bool
estaVazia []    = True
estaVazia _     = False

-- Obter primeiro elemento (cabeça da lista)
cabeca :: [a] -> a
cabeca []     = error "Lista vazia!"
cabeca (x:_)  = x  -- x:xs significa x é a cabeça e xs é a cauda

-- Obter tamanho da lista (recursivo)
tamanho :: [a] -> Int
tamanho []     = 0
tamanho (_:xs) = 1 + tamanho xs

-- Somar todos os elementos de uma lista
somaLista :: [Int] -> Int
somaLista []     = 0
somaLista (x:xs) = x + somaLista xs

-- ============================================
-- COMBINANDO GUARDAS E PATTERN MATCHING
-- ============================================

-- Descrição detalhada de uma lista
descreverLista :: [a] -> String
descreverLista []  = "Lista vazia"
descreverLista [x] = "Lista com um elemento"
descreverLista [x, y] = "Lista com dois elementos"
descreverLista lista
    | length lista < 10  = "Lista pequena com " ++ show (length lista) ++ " elementos"
    | length lista < 100 = "Lista média com " ++ show (length lista) ++ " elementos"
    | otherwise          = "Lista grande com " ++ show (length lista) ++ " elementos"

-- Classificar idade com pattern matching e guardas
classificarIdade :: Int -> String
classificarIdade idade
    | idade < 0     = "Idade inválida"
    | idade < 12    = "Criança"
    | idade < 18    = "Adolescente"
    | idade < 60    = "Adulto"
    | otherwise     = "Idoso"

-- Operações em lista com pattern matching e guardas
operarLista :: String -> [Int] -> Int
operarLista "soma" lista = somaLista lista
operarLista "tamanho" lista = tamanho lista
operarLista "primeiro" (x:_) = x
operarLista _ _ = 0

-- ============================================
-- CASE EXPRESSIONS
-- ============================================

{-
  Case expressions são outra forma de pattern matching
  útil quando queremos fazer pattern matching no meio de uma expressão
-}

descreverListaCase :: [a] -> String
descreverListaCase lista = case lista of
    []     -> "Lista vazia"
    [x]    -> "Lista com um elemento"
    [x, y] -> "Lista com dois elementos"
    _      -> "Lista com mais elementos"

-- Case com guardas
avaliarNota :: Int -> String
avaliarNota nota = case () of
    _ | nota >= 90 -> "A"
      | nota >= 80 -> "B"
      | nota >= 70 -> "C"
      | nota >= 60 -> "D"
      | otherwise  -> "F"

-- ============================================
-- EXEMPLOS PRÁTICOS
-- ============================================

-- Calcular potência usando pattern matching
potencia :: Int -> Int -> Int
potencia _ 0 = 1
potencia base exp = base * potencia base (exp - 1)

-- Verificar se número é primo (usando guardas)
ehPrimo :: Int -> Bool
ehPrimo n
    | n < 2     = False
    | otherwise = not (temDivisor n 2)
    where
        temDivisor num divisor
            | divisor * divisor > num = False
            | num `mod` divisor == 0  = True
            | otherwise               = temDivisor num (divisor + 1)

-- Inverter lista usando pattern matching
inverterLista :: [a] -> [a]
inverterLista []     = []
inverterLista (x:xs) = inverterLista xs ++ [x]

-- Função main para testar
main :: IO ()
main = do
    putStrLn "=== Estruturas de Controle em Haskell ==="
    putStrLn "\n--- If/Then/Else ---"
    putStrLn $ "absoluto (-5) = " ++ show (absoluto (-5))
    putStrLn $ "classificarNumero 10 = " ++ classificarNumero 10
    putStrLn $ "tipoTriangulo 3 3 3 = " ++ tipoTriangulo 3 3 3
    
    putStrLn "\n--- Guardas ---"
    putStrLn $ "classificarNota 8.5 = " ++ classificarNota 8.5
    putStrLn $ "calcularIMC 70 1.75 = " ++ calcularIMC 70 1.75
    putStrLn $ "maiorDeTres 5 10 3 = " ++ show (maiorDeTres 5 10 3)
    
    putStrLn "\n--- Pattern Matching ---"
    putStrLn $ "descreverNumero 1 = " ++ descreverNumero 1
    putStrLn $ "fatorial 5 = " ++ show (fatorial 5)
    putStrLn $ "fibonacci 7 = " ++ show (fibonacci 7)
    putStrLn $ "somaLista [1,2,3,4,5] = " ++ show (somaLista [1,2,3,4,5])
    putStrLn $ "descreverLista [1,2,3] = " ++ descreverLista [1,2,3]
    putStrLn $ "ehPrimo 17 = " ++ show (ehPrimo 17)
