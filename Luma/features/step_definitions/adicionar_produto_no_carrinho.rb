Dado('que eu esteja logado no site') do
    visit('https://magento.nublue.co.uk/')
    click_link('Sign In')
    fill_in('login[username]', with: 'roni_cost@example.com')
    fill_in('login[password]', with: 'roni_cost3@example.com')
    find('button[name="send"]').click 
end
  
Dado('vou para a pagina de jaquetas masculinas') do
    find_by_id('ui-id-4').hover
    find_by_id('ui-id-16').hover
    find_by_id('ui-id-18').hover.click 
     
end
  
Quando('eu clicar na jaqueta {string}') do |nomeDaJaqueta|
    find("img[alt='#{nomeDaJaqueta}']").click
end
  
Quando('Seleciono o tamanho {string} e a cor {string} e clico em adicionar no carrinho') do |tamanho, cor|
    find("div[data-option-tooltip-value='#{tamanho}']").click
    find("div[data-option-label='#{cor}']").click
    find_by_id('product-addtocart-button').click
end
  
Entao('irei visualizar uma mensagem informando que o produto foi adicionado no carrinho.') do
    sleep(3)
    expect(find('div[data-bind="html: $parent.prepareMessageForHtml(message.text)"]')).to have_content 'You added Kenobi Trail Jacket to your'
end