class CreateInformes < ActiveRecord::Migration
  def change
    create_table :informes do |t|
      t.string :nombre_lider
      t.string :celula_madre
      t.decimal :telefono
      t.string :red
      t.decimal :hermano
      t.decimal :amigo
      t.decimal :acepto
      t.decimal :reconcilio
      t.decimal :total
      t.decimal :asistenigle
      t.decimal :ofrenda
      t.date :fecha

      t.timestamps
    end
  end
end
