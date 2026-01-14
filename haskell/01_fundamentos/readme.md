# 01 - Fundamentos do Haskell e Paradigma Funcional

Este módulo foca na mudança de mentalidade do imperativo para o funcional e na sintaxe básica da linguagem Haskell.

## Resumo Teórico

### 1. Imutabilidade e "Ausência" de Variáveis
*  **Paradigma Funcional:** Diferente do Java ou C, aqui não existe mudança de estado.
*  **Variáveis:** A rigor, não existem variáveis (locais de memória mutáveis) em Haskell.
* **Imutabilidade:** Valores são imutáveis dentro do mesmo escopo.  Se você define `x = 5`, `x` será 5 para sempre naquele contexto.
*  **Redefinição:** É possível "redefinir" um valor em um novo escopo, mas isso não destrói o valor original, apenas cria uma nova semântica para o novo contexto.

### 2. Tipos e Funções
* **Tipagem Forte:** Haskell é estaticamente e fortemente tipada.  Todo valor tem um tipo conhecido.
*  **Tipos Primitivos:** `Int` (inteiro), `Float`/`Double` (decimais), `Bool` (lógico), `Char` (caractere) .
* **Protótipo de Função:** É boa prática definir a assinatura da função antes da equação:
    ```haskell
    nomeFuncao :: TipoEntrada -> TipoSaida
    nomeFuncao x = ...
    ```
     *Exemplo:* `soma :: Int -> Int -> Int`.

### 3. Controle de Fluxo
Haskell não usa loops `for`/`while` tradicionais. O controle é feito via recursão e estruturas de decisão:

* **If-Then-Else:** É uma **expressão**, ou seja, deve sempre retornar um valor.  Logo, o `else` é **obrigatório**.
* **Casamento de Padrões (Pattern Matching):** Define equações diferentes para valores de entrada específicos.  O Haskell testa de cima para baixo.
* **Guardas (Guards):** Usa o símbolo `|` para testar condições booleanas sequenciais.  O `otherwise` captura o que sobrar.
*  **Where:** Cria definições locais para evitar repetição de código e cálculos.

---

## Exercícios

**1. Diferença de Áreas (Tipos Básicos)**
 Escreva uma função que receba os raios de dois círculos e retorne a diferença entre suas áreas.

**2. Operadores Lógicos (If-Then-Else)**
 Escreva uma função que receba três números e retorne o maior deles usando `if-then-else` aninhado.

**3. Conceito de Notas (Guardas)**
 Escreva uma função que receba uma nota (Float) e retorne o conceito (String/Char):
* Nota >= 9.0: "A"
* 7.5 <= Nota < 9.0: "B"
* 6.0 <= Nota < 7.5: "C"
* 4.0 <= Nota < 6.0: "D"
* Nota < 4.0: "E"

**4. Fatorial (Pattern Matching)**
 Implemente a função fatorial usando Casamento de Padrões para o caso base (0) e o caso recursivo.

**5. Raízes de 2º Grau (Where)**
 Crie uma função que receba `a`, `b` e `c` de uma equação quadrática e retorne uma lista com as raízes (ou mensagem de erro), usando `where` para calcular o delta separadamente.