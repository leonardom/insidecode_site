# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper
  def create_tab(params={})
    selected = "_selected" if @controller.controller_name == params[:name]

    css_class = "#{params[:name]}#{selected}"
    
    "<div class=\"#{css_class}\"<a href=\"#{params[:link]}\">#{params[:title]}</a></div>"
  end
  
  def flash_notices
    [:notice, :error, :warning].collect do |type|
      content_tag('div', flash[type], :class=>"#{type}", :id => "flash_messages") if flash[type]
    end
  end
end
