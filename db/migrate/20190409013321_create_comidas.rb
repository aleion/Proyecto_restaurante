class CreateComidas < ActiveRecord::Migration[5.2]
  def change
    create_table :comidas do |t|
      t.string :nombre
      t.integer :precio
      t.string :detalle
      t.integer :categoria

      t.timestamps
    end
  end
end
