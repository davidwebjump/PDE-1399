#language: pt

@Carrinho
Funcionalidade: Adicionar produto no carrinho

    Eu como usuario
    Quero fazer o login
    Para adicionar um produto no carrinho

    Cenario: Adicionar produto no carrinho
        Dado que eu acesse o site
        E realize o login com sucesso
        E vou para a pagina de jaquetas masculinas
        Quando eu clicar na jaqueta 'Kenobi Trail Jacket'
        E Seleciono o tamanho 'M' e a cor 'Blue' e clico em adicionar no carrinho
        Entao irei visualizar uma mensagem informando que o produto foi adicionado no carrinho.