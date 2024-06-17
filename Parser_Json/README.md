# JsonValidator

[Apresentacao](https://www.canva.com/design/DAGH2fyKj6s/e3-TRtbExvrCHKjC3sfkaQ/view?utm_content=DAGH2fyKj6s&utm_campaign=designshare&utm_medium=link&utm_source=editor)

## Descrição
`JsonValidator` é um projeto desenvolvido em Ruby projetado para validar eficientemente múltiplos segmentos JSON contidos em uma única string, separados por um delimitador específico (`$`). 

## Funcionalidades
- **Detecção de Erros Comuns**: Identifica problemas comuns em JSONs, como falta de aspas em chaves, estruturas mal formadas (por exemplo, chaves não fechadas), e valores inesperados.
- **Relatório Detalhado de Erros**: Para cada JSON inválido, o validador indica o índice do segmento com problema e descreve o erro específico encontrado.

## Como Funciona
A classe `JsonValidator` utiliza um método privado `parse_segment` para desmembrar e analisar cada token de JSON utilizando expressões regulares e uma pilha para gerenciar estruturas aninhadas (`{}`, `[]`). Erros são tratados e relatados individualmente para cada segmento.
