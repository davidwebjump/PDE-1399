class Carrinho
    include Capybara::DSL

    def SelecionarCamisetasMasculinas
        find_by_id('ui-id-4').hover
        sleep(3)
        find_by_id('ui-id-16').hover
        sleep(3)
        find_by_id('ui-id-18').hover.click
        sleep(4)
    end 

    def SelecionarJaqueta(jaquetaNome)
        find("img[alt='#{jaquetaNome}']").click
    end

    def SelecionarCorETamanho(tamanho,cor)
        find("div[data-option-tooltip-value='#{tamanho}']").click
        find("div[data-option-label='#{cor}']").click
        find_by_id('product-addtocart-button').click
    end

    def ValidarMensagem
        sleep(5)
        assert_text('You added')
    end

end