class CreateAlbums < ActiveRecord::Migration[5.1]
  def change
    create_table :albums do |t|
      t.string :name, null:false
      t.integer :year, null:false
      t.integer :band_id, null:false
      t.boolean :live, default: false, null:false
      t.timestamps
    end
    #Performs fast query on band_id and (band_id and name), but not name
    add_index :albums, %i(band_id name), unique: true


  end
end
