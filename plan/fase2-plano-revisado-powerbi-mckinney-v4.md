# Fase 2 revisada (v4) — Power BI + leituras guiadas pelo seu repo

Versão ajustada depois da análise dos notebooks de Análise de Dados (aulas 2 a 7 e Prova N1) e do sumário do livro "Visualização de Dados em Python". Continua em **3h/dia**, com as provas voltando em cerca de 2 semanas: o plano fecha a Fase 2 antes disso.

## Onde você está hoje (14/10)

- [x] Power BI — roteiro "Introdução à análise de dados da Microsoft"
- [x] Power BI — roteiro "Preparar dados para análise com o Power BI" (último módulo concluído hoje)
- [x] McKinney — capítulo de estruturas de dados do pandas (Series e DataFrame), só leitura. A prática foi dispensada: você já praticou isso na lição 02 do Corey e na Aula 3.
- [x] Repo — arquivos da Aula 4 renomeados para `.ipynb`

## Links do livro "Visualização de Dados em Python" (Rogério Oliveira)

- Leitura online: https://meusite.mackenzie.br/rogerio/MyBook/_build/html/intro.html
- Notebooks para rodar no Colab: https://github.com/Rogerio-mack/Visualizacao-de-Dados-em-Python

Capítulos do livro e a lacuna sua que cada um resolve:

| Capítulo | Arquivo no repo do livro | Para que serve no seu caso |
|---|---|---|
| Gráficos com `Matplotlib` | `c2_parte_1.ipynb` | Títulos, rótulos e unidades corretos (problema da Prova N1) |
| Evolução | `c3_parte_1.ipynb` | Séries temporais, como o problema CO2 x temperatura da Aula 7 |
| Distribuição | `c4_parte_1.ipynb` | Histogramas e boxplots (Prova N1, Cenipa) |
| Quantidades e Proporções | `c5_parte_1.ipynb` | Gráficos de barras e comparação de grupos |
| Relações | `c6_parte_1.ipynb` | Dispersão e correlação (regressões das aulas 6 e 7) |
| Boas Práticas de Visualização | `c7_parte_1.ipynb` | Comunicar resultados, útil para o dashboard de Power BI |

O livro usa Matplotlib. Seus notebooks usam Seaborn, então vale comparar as duas formas quando praticar.

## O que mudou em relação à versão anterior

1. **O livro de visualização agora tem capítulos definidos**, em vez de "escolha pelo sumário". Dois entram na Fase 2 (Dias 4, 6 e 7) e o resto vira fila da Fase 3.
2. **O Dia 4 não tem mais a tarefa de renomear os arquivos da Aula 4**, que você já fez.
3. **A leitura do notebook da Aula 8 saiu do Dia 7.** Ela já está na prática do Dia 5, quando você roda a árvore de decisão e compara com o notebook da professora.
4. **O Dia 7 agora liga leitura e Power BI**: você lê "Boas Práticas de Visualização" e aplica no dashboard no mesmo dia.
5. **Mantidos:** McKinney só com groupby avançado e `pivot_table`, e o VanderPlas no Dia 3 (validação de modelos) e no Dia 5 (árvores de decisão).

## Divisão diária (3h)

| Bloco | Tempo | Foco |
|---|---|---|
| A | 2h00 | Power BI (Microsoft Learn → projeto guiado) |
| B | ~35min | Leitura curta |
| C | ~20min | Prática imediata do que foi lido |
| D | ~5min | Commit no GitHub |

Se um módulo passar de 2h, pare no horário e continue no dia seguinte, sem compensar.

## Cronograma

### Dia 1
- [x] **Power BI:** "Modelar dados com o Power BI" — módulos 1 e 2. Parte disso revisa relacionamentos e DAX das lições 03 e 04 que você já fez, então tende a andar mais rápido.
- [ ] **Leitura:** McKinney, groupby — parte 1 (agregações múltiplas, `agg()`, named aggregation).
- [ ] **Prática:** refaça uma análise do dataset Student Performance usando `groupby` + `agg()` com 2 ou 3 estatísticas ao mesmo tempo.

### Dia 2
- [ ] **Power BI:** "Modelar dados" — módulos 3 e 4.
- [ ] **Leitura:** McKinney, groupby — parte 2 (`transform`, `apply`) e `pivot_table`/`crosstab`.
- [ ] **Prática:** reproduza em pandas a tabela dinâmica da lição de Excel (`Sales.csv`, que já está no repo) e confira se os números batem com o Excel.

### Dia 3
- [ ] **Power BI:** "Modelar dados" — módulos 5 e 6, fechando o roteiro.
- [ ] **Leitura:** VanderPlas, "Hyperparameters and Model Validation" (treino/teste, overfitting, validação cruzada).
- [ ] **Prática:** volte à regressão do problema 2 da Aula 7 e avalie o modelo com `cross_val_score`. Reescreva a interpretação trocando "precisão" por R² e diga o que ele mede. Faça commit.

### Dia 4 — dia de reforço
- [ ] **Power BI:** revise o módulo mais confuso de "Modelar dados" ou adiante o projeto guiado.
- [ ] **Leitura:** Prefácio do livro de visualização (seções "As Formas de Ler Este Livro" e "Como Está Organizado Este Livro") e o capítulo "Introdução".
- [ ] **Prática:** na Prova N1, calcule média, mediana e desvio de `TotalSleepTime` (hoje saem de `term_gpa`) e corrija o rótulo do histograma. Faça commit.

### Dia 5
- [ ] **Power BI:** projeto guiado do Alex The Analyst — entender o dataset e replicar a primeira metade do dashboard.
- [ ] **Leitura:** VanderPlas, "Decision Trees and Random Forests". Se a Aula 8 cair antes deste dia, adiante.
- [ ] **Prática:** treine uma árvore de decisão num dataset que você já conhece (Student Performance ou Titanic) e avalie com treino/teste. Depois rode o notebook da Aula 8 e compare com o seu.

### Dia 6
- [ ] **Power BI:** projeto guiado — segunda metade do dashboard.
- [ ] **Leitura:** livro de visualização, capítulo "Gráficos com `Matplotlib`".
- [ ] **Prática:** refaça 2 gráficos da Prova N1 em Matplotlib com título, rótulos e unidades corretos, e acrescente uma melhoria visual em cada um.

### Dia 7
- [ ] **Power BI:** projeto guiado — ajustes finais, teste de filtros e interações.
- [ ] **Leitura:** livro de visualização, capítulo "Boas Práticas de Visualização".
- [ ] **Prática:** aplique 2 ou 3 práticas do capítulo ao seu dashboard (títulos claros, cores com função, redução de elementos) e anote o que mudou.

### Dia 8 — fechar a Fase 2
- [ ] **Power BI:** escreva a legenda do projeto (3 ou 4 frases: o que o dashboard mostra e por que cada decisão de design). Suba o `.pbix` (ou capturas) para o repo, faça o commit final e marque a Fase 2 como concluída no README principal.
- [ ] **Registro:** adicione ao "Progress Log" do README um resumo do que você aprendeu nesse ciclo.

## Depois do dia 8 — Fase 3

Entra um projeto próprio de ponta a ponta (pergunta de negócio, dados, análise e conclusão). Hoje o repo é quase todo exercício guiado, e um projeto seu é o que mais pesa em uma vaga júnior. Os capítulos restantes do livro de visualização entram conforme o projeto pedir:

- **Distribuição**, quando você explorar as variáveis.
- **Relações**, quando você olhar correlações e modelos.
- **Evolução**, se o seu dataset tiver datas.
- **Quantidades e Proporções**, para comparar grupos.

## Regras que continuam valendo

- Não compense um dia fraco no mesmo dia.
- Se o Power BI atrasar, não corte o bloco de leitura: ele é curto de propósito.
- A prática diária é pequena e fica separada dos projetos grandes. Não precisa ficar "bonita".
