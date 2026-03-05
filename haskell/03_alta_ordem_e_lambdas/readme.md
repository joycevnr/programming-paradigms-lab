# 03 - Polimorfismo, Funções de Alta Ordem e Lambdas

Este módulo aborda o poder de abstração do Haskell, permitindo tratar funções como dados e criar código genérico e reutilizável.

## Resumo Teórico

### 1. Polimorfismo Paramétrico
*  Permite que funções operem sobre **tipos genéricos**, favorecendo o reuso de código .
* Em vez de escrever uma função para lista de inteiros e outra para lista de strings, escrevemos uma para `[t]`.
*  *Exemplo:* `length :: [t] -> Int` funciona para qualquer tipo de lista.

### 2. Funções de Ordem Superior (Higher-Order Functions)
 São funções que possuem pelo menos uma das seguintes características:
1. Recebem outras funções como argumento.
2. Produzem/retornam funções como resultado.

#### Principais Funções:
*  **map:** Aplica uma função de transformação a cada elemento de uma lista.
    *  Assinatura: `map :: (a -> b) -> [a] -> [b]`.
* **filter:** Seleciona elementos de uma lista que satisfazem uma condição (predicado).

### 3. Funções Lambda (Anônimas)
*  São funções sem nome, criadas no momento em que são necessárias.
*  Muito usadas como argumentos para funções de ordem superior (como `map` e `filter`) quando a função é simples e de uso único.
* **Sintaxe:** `(\argumento -> corpo)`.
    *  *Exemplo:* `(\x -> x * 2)` é uma função que dobra o valor de x.

---

## Exercícios Práticos

**1. Mapeamento Simples (Map)**
 Utilizando a função `map`, escreva uma expressão que dobre todos os elementos da lista `[1, 2, 3, 4, 5]`.

**2. Filtragem com Lambda (Filter)**
 Escreva uma função chamada `filterShortWords` que receba uma lista de palavras e use uma função **lambda** com `filter` para retornar apenas as palavras que tenham menos de 5 caracteres.

**3. Aplicação Dupla**
 Implemente a função `applyTwice` que recebe uma função `f` e um valor `x`, e aplica a função duas vezes ao valor: `f (f x)`.

**4. Quadrados dos Pares**
Usando `map`, `filter` e lambdas (ou composição), crie uma expressão que, dada a lista `[1..20]`:
1. Filtre apenas os números pares.
2. Retorne o quadrado desses números.
* *Objetivo:* `[4, 16, 36...]`.

**5. Polimorfismo Manual**
 Reescreva a função `reverse` (que inverte uma lista) usando recursão, garantindo que sua assinatura de tipo seja polimórfica (`[t] -> [t]`) para aceitar qualquer tipo de dado.