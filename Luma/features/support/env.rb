require 'capybara/cucumber'
require 'selenium-webdriver'
require 'report_builder'

#Configuração Capybara

Capybara.configure do |config|
    config.default_driver = :selenium_chrome #qual navegador vamos utilziar
    #config.default_driver = :selenium_chrome_headless

    config.app_host = "https://magento.nublue.co.uk/" #site que vai ser aberto durante os teste
    config.default_max_wait_time = 10 #tempo que ele vai esperar para ver os elementos na tela
end



