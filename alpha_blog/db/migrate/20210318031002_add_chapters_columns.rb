class AddChaptersColumns < ActiveRecord::Migration[6.0]
  def change
    add_timestamps(:chapters, null: true)
  end
end
