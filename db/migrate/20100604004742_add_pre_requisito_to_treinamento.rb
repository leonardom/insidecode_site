class AddPreRequisitoToTreinamento < ActiveRecord::Migration
  def self.up
    add_column :treinamentos, :pre_requisitos, :string
  end

  def self.down
    remove_column :treinamentos, :pre_requisitos
  end
end