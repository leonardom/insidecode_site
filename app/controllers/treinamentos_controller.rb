class TreinamentosController < ApplicationController
  def index
    @treinamentos_java = Treinamento.java
    @treinamentos_rails = Treinamento.rails
  end
  
  def show
    @treinamento = Treinamento.find_by_codigo(params[:id])
  end
end

#L&oacute;gica de programa&ccedil;&atilde;o e conhecimento de conceitos de orienta&ccedil;&atilde;oo &agrave; objetos. B&aacute;sico de desenvolvimento Web: protocolo HTTP, HTML, CSS, JavaScript. Desej&aacute;vel alguma experi&ecirc;ncia com outras tecnologias para desenvolvimento Web, como ASP, PHP, etc.
