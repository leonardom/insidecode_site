class CreateTreinamentos < ActiveRecord::Migration
  def self.up
    create_table :treinamentos do |t|
      t.string :categoria, :length => 10 
      t.string :codigo, :length => 10
      t.string :nome
      t.string :duracao, :length => 10
      t.text   :descricao
      t.string :imagem
      t.timestamps
    end
  end

  def self.down
    drop_table :treinamentos
  end
end
