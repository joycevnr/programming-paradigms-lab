-- Faça um programa que recebe uma string e um valor inteiro referente ao número de vezes que a string deve ser apresentada em tela.

repete :: String -> Int -> IO()
repete palavra n =
    if n == 0 then return()
    else do 
        repete palavra (n-1)
        print palavra

main = do
    repete "Oi, Vitoria" 3