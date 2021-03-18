class Material < ApplicationRecord
  validates :material_id, presence: true, uniqueness: true, length: { minimum: 3, maximum: 5 }
  validates :slides_filename
end