Dado('que eu acesse a tela de login') do
  $exemplo_pages.exemplo_page.load
  expect($exemplo_pages.exemplo_page.titulo_autenticacao.text).to eql 'AUTHENTICATION'
end

Quando('preencher as informações {string} {string}') do |email, senha|
  $exemplo_pages.exemplo_page.preenche_email_senha(email, senha)
  $exemplo_pages.exemplo_page.btn_login.click
end

Então('validar o site redirecionou de forma {string}') do |tipo|

end
