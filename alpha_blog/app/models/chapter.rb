class Chapter < ApplicationRecord
  belongs_to :material
  validates :chapter_num, presence: true
  validates :title, presence: true
  validates :page_start_at, presence: true
end