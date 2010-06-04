class ContatoController < ApplicationController
  def index
    @contato = Contato.new
  end
  
  def create
    @contato = Contato.new(params['contato'])
    
    logger.info(@contato.nome)
    if @contato.valid?
      ContactMailer.deliver_contact_message(@contato)
      flash[:notice] = "Mensagem enviada com sucesso! Obrigado"
      @contato = Contato.new
    end

    render :index
    
  end
end
