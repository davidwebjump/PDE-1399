
Dado('que eu entre na pagina e clique para logar') do
  visit('https://magento.nublue.co.uk/')
  click_link('Sign In')
end
  
Dado('insiro meu email {string} e senha {string}') do |email, senha|
    fill_in('login[username]', with: email)
    fill_in('login[password]', with: senha)
end
  
Quando('eu clicar no botao entrar') do
    find('button[name="send"]').click    
    sleep(6)
end
  
Entao('irei visualizar bem vindo Veronica Costello') do
    page.has_css?('.logged-in')
end