class CreateSensors < ActiveRecord::Migration
  def change
    create_table :sensors do |t|
      t.belongs_to :concentrador, index: true
      t.integer :concentrador_id
      t.string :nombre
      t.string :descripcion
      t.string :estado
      t.string :parametro
      t.string :valor
      t.string :uds

      t.timestamps
    end
  end
end
