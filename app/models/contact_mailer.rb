class ContactMailer < ActionMailer::Base
  def contact_message(contato)
    recipients 'contato@insidecode.com.br'
    from contato.email
    subject "Contato"
    body['name'] = contato.nome
    body['company'] = contato.empresa
    body['email'] = contato.email
    body['phone'] = contato.telefone
    body['message'] = contato.mensagem
  end
end
