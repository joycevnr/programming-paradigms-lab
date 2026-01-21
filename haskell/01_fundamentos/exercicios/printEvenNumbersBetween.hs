-- Defina uma função que recebe dois inteiros e mostra todos os pares entre esses valores.
-- pares entre dois valores → even numbers between two values.
-- Define a function that receives two integers and prints all even numbers between them.

printEvenNumbersBetween :: Int -> Int -> [Int]
printEvenNumbersBetween x y = [z | z <- [x..y], even z]


main :: IO()
main = do
    print (printEvenNumbersBetween 1 10)

-- Português	Inglês	Contexto
-- número par	even	matemática
-- par de sapatos	pair	coisas em dupla
-- pessoas do mesmo nível	peer	pessoas