class AddConteudoToTreinamento < ActiveRecord::Migration
  def self.up
    add_column :treinamentos, :conteudo, :text
  end

  def self.down
    remove_column :treinamentos, :conteudo
  end
end
