class CreateColumnas < ActiveRecord::Migration
  def change
    create_table :columnas do |t|
      t.string :nombre

      t.timestamps
    end
  end
end
