# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper
  def create_tab(params={})
    selected = "_selected" if @controller.controller_name == params[:name]

    css_class = "tab#{selected}"
    
    "<div class=\"#{css_class}\"<a href=\"#{params[:link]}\">#{params[:title]}</a></div>"
  end
  
  def flash_notices
    [:notice, :error, :warning].collect do |type|
      content_tag('div', flash[type], :class=>"#{type}", :id => "flash_messages") if flash[type]
    end
  end
  
  def parse_conteudo(conteudo)
    #conteudo = "*Introducao\n.O que eh Java?\n.Um pouco da historia\n*Caracteristicas Basicas da linguagem\n.Declaracao e atribuicao de valores\n.Tipos primitivos"
    items = conteudo.split("\n")
    
    html = ""
    
    items.each do |item|
      if item =~ /^\*/i
        html << "\n\t</ol>\n\t</li>\n</ul>" if html.size > 0
        
        item.delete!("*")
        html << "\n<ul type=\"square\">\n\t<li>#{item}\n\t<ol>"
      elsif item =~ /^\./i
        item.slice!(0)
        html << "\n\t\t<li>#{item}</li>"
      end
    end
    
    html << "\n\t</ol>\n\t</li>\n</ul>" if html.size > 0
  end
end