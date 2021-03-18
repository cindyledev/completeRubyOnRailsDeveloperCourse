class AddMaterialIdToChapters < ActiveRecord::Migration[6.0]
  def change
    add_column :chapters, :material_id, :string
  end
end
