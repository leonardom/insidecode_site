class ChangePreRequisitosColumnType < ActiveRecord::Migration
  def self.up
    change_column :treinamentos, :pre_requisitos, :text
  end

  def self.down
    change_column :treinamentos, :pre_requisitos, :string
  end
end
