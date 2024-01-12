#language: pt

Funcionalidade: Pesquisar artigo

Cenário: Pesquisar artigo pix no blog agi
Dado que esteja na home do blog agi
Quando pesquisar artigo sobre "pix"
Então os artigos serão exibidos com sucesso

Cenário: Pesquisar artigo inválido no blog agi
Dado que esteja na home do blog agi
Quando pesquisar artigo sobre "1234inválido"
Então nenhum artigo será retornado
