-- Faça um programa que lê inteiros do teclado até que -1 seja digitado. Após isso, os números devem ser mostrados na ordem inversa da leitura.

inversa :: IO()
inversa = do --bloco de instrução que quer entrada e saída
x <- readLn --lê um número do teclado e armazena na variável x
if x == -1 then return () --se o número for -1, termina a função
else do --senão, continua
inversa --chama a função novamente (recursão)
print x --imprime o número lido

-- do como um “bloco sequencial” de ações IO
-- imprime o inverso, pois a chamada recursiva acontece antes do print, é como se 
-- tivesse uma pilha de chamadas: cada chamada espera a próxima terminar antes de continuar.
-- número lido mais cedo fica “pendurado” até que todos os posteriores sejam lidos e impressos. 
---quando a recursão começa a desempilhar, imprime primeiro o último lido, depois o penúltimo, etc.