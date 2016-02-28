class CreateComentarios < ActiveRecord::Migration
  def change
    create_table :comentarios do |t|
      t.string :descripcion
      t.string :correo

      t.timestamps
    end
  end
end
