class Treinamento < ActiveRecord::Base
  has_many :turmas
  
  validates_presence_of :categoria, :codigo, :nome, :duracao, :descricao
  
  named_scope :java, :conditions => ["categoria = ?", "java"], :order => "id"
  named_scope :rails, :conditions => ["categoria = ?", "rails"], :order => "id"
end
