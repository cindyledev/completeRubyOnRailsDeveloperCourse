class UpdateColumnTypes < ActiveRecord::Migration[6.0]
  def change
    change_column :chapters, :chapter_num, :integer
    change_column :chapters, :page_start_at, :integer
  end
end
