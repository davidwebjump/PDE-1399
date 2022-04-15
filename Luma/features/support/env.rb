require 'capybara/cucumber'
require 'selenium-webdriver'

#Configuração Capybara

Capybara.configure do |config|
    config.default_driver = :selenium_chrome #qual navegador vamos utilziar
    config.default_max_wait_time = 5 #tempo que ele vai esperar para ver os elementos na tela
end