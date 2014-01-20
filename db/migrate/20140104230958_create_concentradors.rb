class CreateConcentradors < ActiveRecord::Migration
  def change
    create_table :concentradors do |t|
      t.belongs_to :categoria_equipos, index: true
      t.integer :categoria_equipos_id
      t.string :nombre
      t.string :descripcion
      t.string :estado
      t.float :gis_latitud
      t.float :gis_longitud
      t.string :mac_address
      t.string :numero_serie
      t.string :ip_address
      t.integer :ip_port

      t.timestamps
    end
  end
end
