class CreateConvenios < ActiveRecord::Migration
  def self.up
    create_table :convenios do |t|
      t.string :nombre
      t.string :descripcion
      t.date :fecha_inicio
      t.date :fecha_fin
      t.decimal :monto
      t.string :moneda

      t.timestamps
    end
  end

  def self.down
    drop_table :convenios
  end
end
