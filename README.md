# Paradigmas de Linguagens - Haskell

Repositório para estudos da disciplina Paradigmas de Linguagens de Programação da UFCG, com foco no **Paradigma Funcional** utilizando **Haskell**.

## 📚 Estrutura do Repositório

Este repositório está organizado em módulos progressivos para facilitar o aprendizado de Haskell:

### 01-Basico
Fundamentos da linguagem Haskell:
- **Tipos Básicos**: Int, Integer, Bool, Float, Double, Char, String
- **Imutabilidade**: Conceito fundamental do paradigma funcional
- **Operações**: Aritméticas, booleanas e de comparação
- **Inferência de Tipos**: Como Haskell deduz tipos automaticamente
- **Tuplas**: Agrupamento de valores heterogêneos

📄 Arquivo: [`01-Basico/tipos.hs`](01-Basico/tipos.hs)

### 02-Controle
Estruturas de controle de fluxo em Haskell:
- **If/Then/Else**: Expressões condicionais
- **Guardas (Guards)**: Alternativa elegante para múltiplas condições
- **Pattern Matching**: Casamento de padrões com listas, tuplas e valores
- **Case Expressions**: Pattern matching em expressões
- **Combinações**: Guardas + Pattern Matching

📄 Arquivo: [`02-Controle/controle.hs`](02-Controle/controle.hs)

### 03-Listas
Manipulação de listas - estrutura de dados fundamental:
- **Ranges**: Criação de sequências com `[1..10]`
- **Compreensão de Listas**: Sintaxe matemática para criar listas
- **Lazy Evaluation**: Avaliação preguiçosa e listas infinitas
- **Funções de Lista**: head, tail, map, filter, fold, zip, etc.
- **Operações Recursivas**: Implementações manuais de funções

📄 Arquivo: [`03-Listas/listas.hs`](03-Listas/listas.hs)

### 04-Funcoes
Funções de alta ordem e programação funcional avançada:
- **Funções de Alta Ordem**: Funções que recebem/retornam funções
- **Map**: Aplicar função a cada elemento de uma lista
- **Filter**: Filtrar elementos baseado em predicado
- **Fold**: Reduzir lista a um único valor
- **Lambdas**: Funções anônimas `(\x -> x * 2)`
- **Composição**: Combinar funções com `(.)`
- **Aplicação Parcial**: Currying e especialização de funções

📄 Arquivo: [`04-Funcoes/funcoes.hs`](04-Funcoes/funcoes.hs)

---

## 🎯 Plano de Estudos - Paradigma Funcional

### Semana 1: Fundamentos do Paradigma Funcional

#### Objetivos:
- Compreender os princípios do paradigma funcional
- Dominar tipos básicos e imutabilidade
- Aprender sintaxe básica de Haskell

#### Conceitos-Chave:
- **Imutabilidade**: Valores não podem ser alterados após criação
- **Funções Puras**: Mesmo input sempre produz mesmo output, sem efeitos colaterais
- **Transparência Referencial**: Expressões podem ser substituídas por seus valores
- **Avaliação de Expressões**: Tudo é uma expressão que retorna um valor

#### Atividades:
1. Ler e executar exemplos em `01-Basico/tipos.hs`
2. Praticar declaração de tipos e funções simples
3. Implementar funções básicas (dobro, triplo, área, perímetro)
4. Exercício: Criar conversor de temperatura (Celsius ↔ Fahrenheit)

#### Recursos:
- [Learn You a Haskell - Starting Out](http://learnyouahaskell.com/starting-out)
- [Haskell Wiki - Introduction](https://wiki.haskell.org/Introduction)

---

### Semana 2: Controle de Fluxo Funcional

#### Objetivos:
- Dominar estruturas de controle em Haskell
- Entender pattern matching profundamente
- Escrever código mais elegante com guardas

#### Conceitos-Chave:
- **Pattern Matching**: Decomposição estrutural de dados
- **Guardas**: Condições múltiplas de forma legível
- **Recursão**: Principal mecanismo de iteração no paradigma funcional
- **Case Analysis**: Análise exaustiva de casos

#### Atividades:
1. Estudar exemplos em `02-Controle/controle.hs`
2. Implementar funções recursivas (fibonacci, fatorial, potência)
3. Praticar pattern matching com diferentes estruturas
4. Exercício: Criar calculadora simples usando pattern matching

#### Recursos:
- [Learn You a Haskell - Syntax in Functions](http://learnyouahaskell.com/syntax-in-functions)
- [Recursion Patterns](https://wiki.haskell.org/Recursion)

---

### Semana 3: Listas e Lazy Evaluation

#### Objetivos:
- Dominar manipulação de listas
- Compreender avaliação preguiçosa
- Trabalhar com estruturas infinitas

#### Conceitos-Chave:
- **Listas**: Estrutura de dados fundamental em programação funcional
- **Lazy Evaluation**: Computação sob demanda
- **List Comprehension**: Notação matemática para criar listas
- **Recursão em Listas**: Padrões head:tail

#### Atividades:
1. Explorar `03-Listas/listas.hs`
2. Criar listas com ranges e comprehension
3. Experimentar com listas infinitas
4. Exercício: Implementar crivo de Eratóstenes, números primos

#### Recursos:
- [Learn You a Haskell - Lists](http://learnyouahaskell.com/starting-out#an-intro-to-lists)
- [List Comprehensions](http://learnyouahaskell.com/starting-out#im-a-list-comprehension)

---

### Semana 4: Funções de Alta Ordem

#### Objetivos:
- Dominar funções de alta ordem
- Usar map, filter, fold efetivamente
- Escrever código funcional idiomático

#### Conceitos-Chave:
- **Higher-Order Functions**: Funções como valores de primeira classe
- **Map/Filter/Fold**: Padrões fundamentais de processamento de listas
- **Lambdas**: Funções anônimas para uso único
- **Currying**: Todas as funções em Haskell são curried
- **Composição**: Construir funções complexas de funções simples

#### Atividades:
1. Estudar `04-Funcoes/funcoes.hs` em profundidade
2. Praticar map, filter, fold em diferentes contextos
3. Escrever pipelines de transformação de dados
4. Exercício: Processar lista de dados usando composição de funções

#### Recursos:
- [Learn You a Haskell - Higher Order Functions](http://learnyouahaskell.com/higher-order-functions)
- [Functional Programming Patterns](https://wiki.haskell.org/Functional_programming)

---

## 🚀 Como Usar Este Repositório

### Pré-requisitos

Instalar o GHC (Glasgow Haskell Compiler):

```bash
# Ubuntu/Debian
sudo apt-get install haskell-platform

# macOS (usando Homebrew)
brew install ghc cabal-install

# Windows
# Baixar GHCup: https://www.haskell.org/ghcup/
```

### Executando os Exemplos

#### Modo Interativo (GHCi):

```bash
# Entrar no interpretador
ghci

# Carregar um arquivo
:load 01-Basico/tipos.hs
# ou
:l 01-Basico/tipos.hs

# Testar funções
soma 5 3
dobro 7
fatorial 5

# Executar o main
main

# Recarregar após edições
:reload
# ou
:r

# Sair
:quit
```

#### Compilar e Executar:

```bash
# Compilar
ghc 01-Basico/tipos.hs

# Executar
./01-Basico/tipos
```

### Dicas de Estudo

1. **Pratique no GHCi**: Use o interpretador interativo para experimentar
2. **Leia os Comentários**: Cada arquivo tem explicações detalhadas
3. **Execute os Exemplos**: Rode o `main` de cada arquivo
4. **Modifique o Código**: Experimente variações das funções
5. **Crie Seus Exemplos**: Implemente suas próprias funções
6. **Use :type no GHCi**: Para verificar tipos de expressões

```haskell
:type map          -- (a -> b) -> [a] -> [b]
:type filter       -- (a -> Bool) -> [a] -> [a]
:type foldr        -- (a -> b -> b) -> b -> [a] -> b
```

---

## 📖 Conceitos Fundamentais do Paradigma Funcional

### 1. Imutabilidade
Valores nunca mudam após serem criados. Em vez de modificar, criamos novos valores.

```haskell
x = 5
y = x + 10  -- y é 15, x ainda é 5
```

### 2. Funções Puras
Funções sempre retornam o mesmo resultado para os mesmos argumentos, sem efeitos colaterais.

```haskell
-- Função pura
soma :: Int -> Int -> Int
soma x y = x + y

-- Sempre: soma 2 3 = 5
```

### 3. Transparência Referencial
Uma expressão pode ser substituída pelo seu valor sem alterar o comportamento do programa.

### 4. Funções de Alta Ordem
Funções podem receber e retornar outras funções.

```haskell
aplicarDuas :: (a -> a) -> a -> a
aplicarDuas f x = f (f x)

-- aplicarDuas (*2) 5 = 20
```

### 5. Recursão
A principal forma de iteração no paradigma funcional.

```haskell
fatorial :: Int -> Int
fatorial 0 = 1
fatorial n = n * fatorial (n - 1)
```

### 6. Lazy Evaluation
Expressões são avaliadas apenas quando necessário, permitindo estruturas infinitas.

```haskell
naturais = [1..]  -- Lista infinita!
primeiros10 = take 10 naturais  -- [1,2,3,4,5,6,7,8,9,10]
```

---

## 🎓 Vantagens do Paradigma Funcional

1. **Código Conciso**: Expressividade com menos linhas
2. **Fácil de Testar**: Funções puras são facilmente testáveis
3. **Paralelização**: Imutabilidade facilita programação paralela
4. **Raciocínio Matemático**: Código próximo à matemática
5. **Menos Bugs**: Imutabilidade previne muitos erros comuns
6. **Composição**: Construir programas complexos de peças simples

---

## 📚 Recursos Adicionais

### Livros
- [Learn You a Haskell for Great Good!](http://learnyouahaskell.com/) - Gratuito online
- [Real World Haskell](http://book.realworldhaskell.org/) - Aplicações práticas
- [Haskell Programming from First Principles](https://haskellbook.com/) - Abordagem aprofundada

### Websites
- [Haskell.org](https://www.haskell.org/) - Site oficial
- [Hackage](https://hackage.haskell.org/) - Repositório de pacotes
- [Hoogle](https://hoogle.haskell.org/) - Busca de funções por tipo
- [Try Haskell](https://tryhaskell.org/) - Interpretador online

### Comunidade
- [Haskell Reddit](https://www.reddit.com/r/haskell/)
- [Stack Overflow - Haskell](https://stackoverflow.com/questions/tagged/haskell)
- [Haskell Discord](https://discord.gg/haskell)

### Exercícios
- [Exercism - Haskell Track](https://exercism.org/tracks/haskell)
- [HackerRank - Functional Programming](https://www.hackerrank.com/domains/fp)
- [Project Euler](https://projecteuler.net/) - Problemas matemáticos

---

## 🤝 Contribuindo

Sinta-se à vontade para contribuir com:
- Novos exemplos
- Correções
- Exercícios adicionais
- Melhorias na documentação

---

## 📝 Licença

Este projeto está sob a licença MIT. Veja o arquivo [LICENSE](LICENSE) para mais detalhes.

---

## ✨ Autor

Desenvolvido como material de estudo para a disciplina de Paradigmas de Linguagens de Programação - UFCG

**Bons estudos! 🚀📚**
