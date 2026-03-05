## 1. Paradigma Lógico

O paradigma lógico faz parte da categoria de paradigmas declarativos. Diferente do modelo imperativo, o foco não está em como resolver um problema, mas em o que deve ser resolvido.

- relações
- lógica matemática não é 100% implementável
- restritas a cláusulas de Horn
- programas não descrevem como resolver
- lógica simbólica
- linguagem formal - representação
- regras de inferência, como o Modus Ponens(p implica em q, p é verdade, portanto q deve ser verdade) - manipulação
- sem ambiguidade
- verdadeiro ou falso
- mais alto nível
- nenhuma linguagem de programação lógica consegue explorar totalmente o potencial da lógica matemática
- estratégia de busca para controle de inferências
- regras facilitam a execução de consultas e tornam um programa muito mais expressivo

### Cláusulas de Horn

As linguagens lógicas não implementam 100% da lógica matemática, restringindo-se às cláusulas de Horn.

* **Formato:** $A_0 \text{ if } A_1 \text{ and } ... \text{ and } A_n$.
* **Fato:** Uma cláusula onde $n=0$ ($A_0$ é sempre verdade).
* **Regra:** Uma cláusula onde $n \ge 1$ (a conclusão $A_0$ depende das condições $A_i$).
* Sem condições, $A_0$ é um fato, não depende de nada

---

## 2. Prolog

O Prolog (proveniente de lógica de primeira ordem) é a linguagem mais popular deste paradigma, criada em 1970 por Alain Colmerauer e muito associada à Inteligência Artificial.

#### Sintaxe e Tipos de Dados 

* **Átomos:** Constantes iniciadas com minúsculas ou entre aspas simples (ex: `joao`, `'João'`).
* **Variáveis:** Iniciadas com maiúsculas ou underscore (ex: `X`, `_Nome`).
* **Números:** Inteiros (ex: `1`) e Floats (ex: `5.3`).
* **Listas:** Elementos entre colchetes separados por vírgulas (ex: `[a, b, c]`).



#### Operadores,  Controle e Manipulações

* **Particularidades:** 
* `:-` significa "se"; 
* `,` significa "e"; 
* `;` significa "ou";
* unificação;
* operador `is` para avaliar expressões (ex: `R is X * 2`);
* corte (`!`) que impede que o sistema tente outras alternativas de unificação (backtracking), fixando a solução encontrada;
* similar ao Haskell;
* o operador `|` para separar a cabeça da cauda.

#### Exemplos:

* **Pertence:** Verifica se um elemento está na lista.
```prolog
pertence(X, [X|_]) :- !.
pertence(X, [_|Y]) :- pertence(X, Y).

```


* **Tamanho (Length):**
```prolog
length([], 0).
length([_|Y], R) :- length(Y, R1), R is R1 + 1.
```


* **Concatenação:**
```prolog
concat([], L, L).
concat([X|L1], L2, [X|L3]) :- concat(L1, L2, L3).

```

#### Execução

Ao receber uma consulta, o Prolog:

1. Tenta unificar com fatos ou cabeças de regras.
2. Se unificar com uma regra, tenta resolver recursivamente o corpo (da esquerda para a direita).
3. Usa Backtracking(retrocesso) se uma tentativa falhar, buscando alternativas na base de conhecimento.
4. Falha se todas as alternativas forem exploradas sem sucesso.
