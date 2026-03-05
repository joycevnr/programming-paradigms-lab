---Dado um intervalo de inteiros definido por seus limites inferior e superior, construa uma lista de todos os números primos nesse intervalo.
-- 1. Função Auxiliar: Encontra o menor divisor de n começando por i
proxDivisor :: Int -> Int -> Int
proxDivisor n i
    | i * i > n      = n    -- Otimização: Se i passou da raiz quadrada, n é primo
    | n `mod` i == 0 = i    -- Achou um divisor! Retorna ele.
    | otherwise      = proxDivisor n (i + 1)

-- 2. Função Auxiliar: Verifica se é primo usando a lógica acima
ehPrimo :: Int -> Bool
ehPrimo n
    | n < 2     = False
    | otherwise = proxDivisor n 2 == n  -- É primo se o menor divisor for ele mesmo

-- 3. Função Principal: Gera a lista no intervalo
primesR :: Int -> Int -> [Int]
primesR inicio fim = [ x | x <- [inicio..fim], ehPrimo x ]

-- Teste
main :: IO ()
main = do
    print (primesR 10 20)