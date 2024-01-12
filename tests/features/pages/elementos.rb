class Pesquisar < SitePrism::Page

    element :btn_lupa, '#search-open'
    element :txt_pesquisar, '.search-field'
    element :btn_pesquisar, '.search-submit'

    def clicar_lupa
        btn_lupa.click
    end

    def clicar_pesquisar
        btn_pesquisar.click
    end

end
