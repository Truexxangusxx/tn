class CreateDetalles < ActiveRecord::Migration
  def change
    create_table :detalles do |t|
      t.references :producto, index: true
      t.references :columna, index: true
      t.string :valor

      t.timestamps
    end
  end
end
