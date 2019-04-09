class CreateLiquidos < ActiveRecord::Migration[5.2]
  def change
    create_table :liquidos do |t|
      t.string :nombre
      t.integer :precio
      t.string :detalle
      t.integer :categoria

      t.timestamps
    end
  end
end
