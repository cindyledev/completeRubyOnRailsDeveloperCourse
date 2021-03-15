class CreateChapters < ActiveRecord::Migration[6.0]
  def change
    create_table :chapters do |t|
      t.numeric :chapter_num
      t.string :title
      t.numeric :page_start_at
    end
  end
end
