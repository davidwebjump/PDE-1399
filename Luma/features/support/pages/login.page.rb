class LoginPage
    
    include Capybara::DSL

    def Acessar
        visit('/')
        click_link('Sign In')
    end

    def PreencherLogin(email, senha)
        fill_in('login[username]', with: email)
        fill_in('login[password]', with: senha)
    end 

    def Entrar
        find('button[name="send"]').click    
        sleep(6)
    end

    def ValidarAcesso
        page.has_css?('.logged-in')
    end

end