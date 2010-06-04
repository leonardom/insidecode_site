class Contato < Tableless 
  column :nome,     :string
  column :empresa,  :string
  column :email,    :string
  column :telefone, :string
  column :mensagem, :text
  
  validates_presence_of  :nome, :email, :mensagem
  validates_format_of    :email, :with => %r{\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z}i, 
                                 :message => "deve ter o formato xxx@yyy.zzz"  
end