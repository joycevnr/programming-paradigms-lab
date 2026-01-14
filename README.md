<div align="center">

# Paradigmas de Linguagens de Programação (UFCG)

![Haskell](https://img.shields.io/badge/Haskell-5e5086?style=for-the-badge&logo=haskell&logoColor=white)
![Prolog](https://img.shields.io/badge/Prolog-A93226?style=for-the-badge&logo=prolog&logoColor=white)
![UFCG](https://img.shields.io/badge/UFCG-2024.2-blue?style=for-the-badge)
![Status](https://img.shields.io/badge/Paradigma-Funcional-purple?style=for-the-badge)

</div>

## Sobre o Repositório

Este repositório reúne meus códigos e estudos da disciplina **Paradigmas de Linguagens de Programação** na **UFCG**.

O foco aqui é mudar a chave do pensamento imperativo para o paradigma funcional, utilizando linguagens funcionais, como Haskell. Compartilhei alguns exercícios que cobrem desde a sintaxe básica até conceitos de alta abstração, como imutabilidade, funções puras e recursão.

---

## Como rodar e testar
- Haskell pode ser compilado ou interpretado.

### 1. GHCi (Modo Interativo)
O **GHCi** funciona como um "playground".  Carrego o arquivo, testo uma função, altero o código, recarrego e testa de novo.

1.  Abra o terminal na pasta do código.
2.  Carregue o arquivo: `ghci nome_arquivo.hs`
3.  Chame a função direto no terminal: `salario 50`

**Atalhos essenciais:**

| Atalho | Comando | Função |
| :--- | :--- | :--- |
| `:r` | **Reload** | Recarrega o arquivo (use sempre que salvar uma alteração no VS Code). |
| `:t` | **Type** | Mostra o tipo de uma função ou dado (ex: `:t salario`). |
| `:i` | **Info** | Exibe detalhes técnicos e precedência de operadores. |
| `:l` | **Load** | Carrega um arquivo diferente sem fechar o GHCi. |
| `:q` | **Quit** | Encerra o terminal interativo. |

### 2. Execução Rápida (Script)
Apenas rodar o arquivo inteiro sem entrar no modo interativo:

```bash
runhaskell nome_arquivo.hs
```

### 3. Compilação (Gerar Executável)
Para criar um binário final (arquivo .exe ou executável Linux) para rodar em qualquer máquina:

```bash
ghc nome_arquivo.hs
# Após compilar, rode o arquivo gerado:
./nome_arquivo
```

## 🇺🇸 English Version

### Functional Programming Studies (UFCG)

This repository documents my coursework for the **Programming Language Paradigms** class at **UFCG**.

The focus is on the **Functional Paradigm**, exploring concepts like immutability and higher-order functions through **Haskell** and other functional languages covered in the curriculum.

### How to Run (Haskell)
* **Interactive:** `ghci filename.hs` (Use `:r` to reload).
* **Script:** `runhaskell filename.hs`
* **Compile:** `ghc filename.hs`
