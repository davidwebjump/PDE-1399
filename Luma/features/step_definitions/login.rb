
login = LoginPage.new

Dado('que eu entre na pagina e clique para logar') do
    login.Acessar
end
  
Dado('insiro meu email {string} e senha {string}') do |email, senha|
    login.PreencherLogin(email,senha)
end
  
Quando('eu clicar no botao entrar') do
    login.Entrar
end
  
Entao('irei visualizar bem vindo Veronica Costello') do
    login.ValidarAcesso
end