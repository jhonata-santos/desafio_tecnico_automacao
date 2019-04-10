module Pages
  class Exemplo < SitePrism::Page
    set_url '/index.php?controller=authentication&back=my-account'

    element :titulo_autenticacao, '#center_column > h1'
    element :inpt_email, '#email'
    element :inpt_senha, '#passwd'
    element :btn_login, '#SubmitLogin > span'

    def preenche_email_senha(email, senha)
      inpt_email.send_keys(email)
      inpt_senha.send_keys(senha)
    end
  end
end
