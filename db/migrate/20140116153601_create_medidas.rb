class CreateMedidas < ActiveRecord::Migration
  def change
    create_table :medidas do |t|
      t.belongs_to :sensor, index: true
      t.integer :sensor_id
      t.timestamp :fecha
      t.float :valor

      t.timestamps
    end
  end
end
