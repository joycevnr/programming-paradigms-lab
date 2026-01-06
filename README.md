# Paradigmas-de-Linguagens
Repositório para estudos da disciplina Paradigmas de Linguagens de Programação da UFCG, com foco na paradigma funcional

# Como rodar e testar os problemas do repositório

Haskell pode ser compilado ou interpretado.

## GHCi (Interativo)
O **GHCi** é o "playground" do Haskell. Você carrega o arquivo, testa uma função, altera o código, recarrega e testa de novo.

1.  Abrir o terminal na pasta do código.
2.  Digite: `ghci nome_arquivo.hs`
3.  Chamo suas funções, como: `salario 50`.

### Comandos úteis:

| Atalho | Comando | Para que serve? |
| :--- | :--- | :--- |
| `:r` | **Reload** | Recarrega o arquivo após você salvar mudanças no VS Code. |
| `:t` | **Type** | Mostra o tipo de uma função/dado (ex: `:t salario`).|
| `:i` | **Info** | Mostra detalhes profundos (prioridade de operadores, onde foi definido, etc). |
| `:l` | **Load** | Carrega um arquivo diferente sem fechar o terminal (ex: `:l outro.hs`). |
| `:q` | **Quit** | Sai do GHCi. |

---

## 2. Teste Rápido (Script) - sem modo interativo

```bash
runhaskell nome_arquivo.hs
```

1. Criar Executável (Compilar) para gerar um arquivo .exe (binário) final para rodar em qualquer máquina:

```bash
ghc nome_arquivo.hs
# Depois rodo o arquivo gerado (ex: ./nome_arquivo)
``` 