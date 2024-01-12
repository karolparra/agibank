require_relative "../pages/elementos.rb"
pesquisar = Pesquisar.new
artigo = ''

Dado('que esteja na home do blog agi') do
    visit '/'
end

Quando('pesquisar artigo sobre {string}') do |nome_artigo|
    artigo = nome_artigo
    pesquisar.clicar_lupa
    pesquisar.txt_pesquisar.send_keys artigo
    pesquisar.clicar_pesquisar
end

Entao('os artigos serão exibidos com sucesso') do
    expect(page).to have_text 'Resultados da busca por: ' + artigo
end

Então('nenhum artigo será retornado') do
    expect(page).to have_text 'Nenhum resultado'
end
