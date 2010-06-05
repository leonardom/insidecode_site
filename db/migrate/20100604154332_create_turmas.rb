class CreateTurmas < ActiveRecord::Migration
  def self.up
    create_table :turmas do |t|
      t.references :treinamento
      t.string :data
      t.string :periodo
      t.string :horario

      t.timestamps
    end
  end

  def self.down
    drop_table :turmas
  end
end
