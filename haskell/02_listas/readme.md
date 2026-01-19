# 02 - Listas e Avaliação Preguiçosa (Lazy Evaluation)

Este módulo foca na estrutura de dados fundamental do Haskell (Listas) e no mecanismo de avaliação que permite trabalhar com infinitude.

## Resumo Teórico

### 1. Estrutura de Listas
*   **Homogeneidade:** Listas em Haskell armazenam elementos do **mesmo tipo**.
* **Anatomia:** Toda lista é composta por dois segmentos:
    1.   **Head (Cabeça):** O primeiro elemento.
    2.   **Tail (Cauda/Corpo):** O restante da lista.
    *   *Exemplo:* `[1, 2, 3]` é construído como `1 : 2 : 3 : []`.

### 2. Definindo Listas
* **Ranges:** Podemos definir listas indicando limites inferior e superior.
    *   `[1..4]` gera `[1, 2, 3, 4]`.
* **Progressão Aritmética:** Indicando o segundo termo, definimos o "passo".
    *   `[7, 6..3]` gera `[7, 6, 5, 4, 3]`.

### 3. Compreensão de Listas (List Comprehension)
*   Similar à notação matemática de conjuntos, permite criar novas listas transformando e filtrando listas existentes .
* **Sintaxe:** `[ transformação | elemento <- listaOriginal, filtro ]`.
*   *Exemplo:* `[ n^2 | n <- [1..5] ]` gera os quadrados de 1 a 5.

### 4. Avaliação Preguiçosa (Lazy Evaluation)
*   O Haskell avalia argumentos somente quando são **estritamente necessários**.
*   **Listas Infinitas:** Isso permite declarar listas sem fim, pois o computador só processa a parte que você pedir para usar.
    *   *Exemplo:* `pares = [0, 2..]` define todos os números pares existentes.
    * Para usar, devemos limitar a saída: `take 5 pares` retorna `[0, 2, 4, 6, 8]`.

### 5. Funções Essenciais (Prelude)
  Algumas funções nativas indispensáveis:
* `++`: Concatena duas listas.
* `!!`: Retorna o elemento no índice específico (ex: `lista !! 3`).
* `head` / `tail`: Retorna a cabeça ou a cauda.
* `length`: Retorna o tamanho.
* `reverse`: Inverte a lista.
* `take n`: Pega os primeiros *n* elementos.
* `drop n`: Remove os primeiros *n* elementos.

---

## Exercícios Práticos

**1. Avaliação de Listas**
  Sem rodar o código, determine qual o resultado ou o tipo das expressões abaixo (anote como comentário no código):
* `[2, 4..9]` --> [1, 4, 6, 8]
* `[10..1]` --> []
* `length [2,3]` vs `length [[2,3]]` --> 2 e 1

**2. Dobro e Quadrado**
  Defina uma função que gere uma lista com os quadrados dos elementos pares de 1 a 20.

**3. Rotação de Lista**
  Crie uma função `rotate` que receba uma lista e um número `n`, e mova os primeiros `n` elementos para o final da lista.
* *Exemplo:* `rotate [1,2,3,4,5] 2` deve retornar `[3,4,5,1,2]`.
> *Dica: Use `take`, `drop` e `++`.*

**4. Manipulação Infinita**
  Crie uma lista infinita de múltiplos de 5. Em seguida, use a função `take` para recolher os 10 primeiros elementos dessa lista.

**5. Polimorfismo**
  Implemente sua própria versão da função `length` usando recursão e pattern matching, garantindo que ela funcione para listas de qualquer tipo (`[t]`).