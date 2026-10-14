# Fase 2 revisada — Power BI + Python for Data Analysis (McKinney)

Atualização do plano anterior: agora com **4h/dia** (em vez de 1h30), intercalando o que falta do curso de Power BI (prioridade) com uma dose curta e diária do livro do McKinney — leitura "just-in-time", sempre seguida de prática imediata, nunca teoria solta.

**Regra-chave do livro:** você já viu pandas básico (Corey Schafer), então pulamos os capítulos de preliminares/Python básico do McKinney e vamos direto aos capítulos que preenchem lacuna real — estruturas do pandas, carregar/limpar dados, merge/reshape, groupby. Cada sessão de leitura (30-45min) é seguida de 15-20min escrevendo o mesmo código num notebook pequeno, à parte dos projetos grandes — é aqui que mora o "just-in-time": aplicar o conceito assim que ele é lido, não no fim do capítulo.

## Divisão diária (4h totais)

| Bloco | Tempo | Foco |
|---|---|---|
| A | 2h30 | Power BI (Microsoft Learn → depois projeto guiado) |
| B | ~45min | Leitura McKinney (curta, de propósito) |
| C | ~30min | Prática imediata do que foi lido (notebook pequeno) |
| D | ~15min | Commit no GitHub (Power BI e/ou leitura do dia) |

## Bloco A — Finalizar Power BI (dias 1-5)

Restam os roteiros "Preparar dados para análise com o Power BI" (4h33) e "Modelar dados com o Power BI" (5h50) ≈ 10h20 no total → cabe em 5 dias de 2h30.

- [ ] **Dia 1** — "Preparar dados" — módulos 1 e 2
- [ ] **Dia 2** — "Preparar dados" — módulos 3 e 4, finalizando o roteiro
- [ ] **Dia 3** — "Modelar dados" — módulos 1 e 2
- [ ] **Dia 4** — "Modelar dados" — módulos 3 e 4
- [ ] **Dia 5** — "Modelar dados" — módulos 5 e 6, finalizando o roteiro

## Bloco A (continuação) — Projeto guiado Power BI (dias 6-8)

- [ ] **Dia 6** — Projeto Power BI/Tableau do Alex The Analyst: entender o dataset + replicar a primeira metade do dashboard
- [ ] **Dia 7** — Replicar a segunda metade do dashboard
- [ ] **Dia 8** — Ajustes finais, testar filtros/interações, escrever a legenda do projeto (3-4 frases: o que mostra, por que cada decisão)

## Dia 9 — Publicar e fechar a Fase 2

- [ ] Subir os arquivos do projeto (.pbix ou capturas + README) pro repositório, commit final, marcar Fase 2 como concluída no README principal

## Bloco B+C — McKinney, em paralelo aos dias 1-9

Leitura curta e prática imediata todo dia, nessa ordem (pule os capítulos de fundamentos de Python — você já tem essa base):

- [ ] **Dia 1** — Cap. "Pandas: estruturas de dados" (Series e DataFrame) → prática: criar 2-3 Series/DataFrames do zero num notebook, indexar e fatiar
- [ ] **Dia 2** — Cap. "Carregamento e armazenamento de dados" (read_csv, read_excel, parâmetros comuns) → prática: ler o `parks_and_recreation` ou outro CSV pequeno do repo com 3 parâmetros diferentes de `read_csv`
- [ ] **Dia 3** — Cap. "Limpeza e preparação de dados" (valores nulos, duplicatas, substituições) → prática: pegar um dataset pequeno com sujeira proposital (ou o `results.csv` do Codespaces) e tratar nulos/duplicatas
- [ ] **Dia 4** — Cap. "Combinação e reformatação de dados" (merge, concat, join) → prática: criar 2 DataFrames pequenos e juntar com `merge` de 3 formas (inner, left, outer)
- [ ] **Dia 5** — Continuação do capítulo anterior (reshape, pivot, melt) → prática: pivotar um DataFrame pequeno e desfazer com `melt`
- [ ] **Dia 6** — Cap. "Agregação de dados e operações de groupby" — parte 1 → prática: `groupby` + uma agregação simples (`mean`, `sum`) no mesmo dataset do dashboard que você está montando no Power BI
- [ ] **Dia 7** — "Groupby" — parte 2 (múltiplas agregações, `agg()`) → prática: repetir a mesma análise do dashboard de Power BI, mas em pandas, e comparar os números
- [ ] **Dia 8** — Revisão livre: releia uma seção que ficou confusa, ou avance se estiver tudo tranquilo
- [ ] **Dia 9** — Consolidação: escreva um resumo de 4-5 linhas no README (ou num `notes.md`) do que você aprendeu com o McKinney essa semana

## Nomeação dos notebooks de prática

Continue a numeração que já existe em `python-pandas/`, só identificando a origem no nome:

```
python-pandas/
├── 0X-mckinney-dataframes-series.ipynb
├── 0X-mckinney-read-csv.ipynb
├── 0X-mckinney-cleaning.ipynb
├── 0X-mckinney-merge-join.ipynb
├── 0X-mckinney-reshape.ipynb
├── 0X-mckinney-groupby.ipynb
```

## Depois do dia 9

Com a Fase 2 fechada, o volume de leitura do McKinney aumenta (como você pediu) e os próximos capítulos (séries temporais, pandas avançado) entram no ritmo normal da Fase 3 — sem precisar mais dividir atenção com o curso de Power BI.

## Regras que continuam valendo

- Não compense um dia fraco no mesmo dia — ajuste o ritmo no dia seguinte, sem culpa.
- Se Power BI atrasar num dia, não corte o bloco de leitura — ele é curto de propósito, exatamente pra nunca ser a parte sacrificada.
- Cada prática do McKinney é pequena e separada dos projetos grandes — não precisa ficar "bonita", é treino de mão na massa, não portfólio.
