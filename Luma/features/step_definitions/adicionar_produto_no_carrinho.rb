carrinho = Carrinho.new
login = LoginPage.new

Dado('que eu acesse o site') do
    login.Acessar
  end
  
Dado('realize o login com sucesso') do
    login.PreencherLogin('roni_cost@example.com','roni_cost3@example.com')
    login.Entrar
end
  
Dado('vou para a pagina de jaquetas masculinas') do
    carrinho.SelecionarCamisetasMasculinas
end
  
Quando('eu clicar na jaqueta {string}') do |nomeDaJaqueta|
    carrinho.SelecionarJaqueta(nomeDaJaqueta)
end
  
Quando('Seleciono o tamanho {string} e a cor {string} e clico em adicionar no carrinho') do |tamanho, cor|
  carrinho.SelecionarCorETamanho(tamanho,cor)
end
  
Entao('irei visualizar uma mensagem informando que o produto foi adicionado no carrinho.') do
   carrinho.ValidarMensagem
end