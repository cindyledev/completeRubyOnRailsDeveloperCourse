class Chapter < ApplicationRecord
  validates :chapter_num, presence: true
  validates :title, presence: true
  validates :page_start_at, presence: true
end