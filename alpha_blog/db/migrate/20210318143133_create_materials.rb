class CreateMaterials < ActiveRecord::Migration[6.0]
  def change
    create_table :materials do |t|
      t.string :material_id
      t.string :slides_filename
      t.timestamps
    end
  end
end
