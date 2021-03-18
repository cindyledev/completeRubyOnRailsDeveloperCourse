class Material < ApplicationRecord
  has_many :chapters
  validates :material_id, presence: true, uniqueness: true, length: { minimum: 3, maximum: 5 }
end