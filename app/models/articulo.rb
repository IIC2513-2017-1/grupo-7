class Articulo < ApplicationRecord
  belongs_to :user
  has_many :comentarios
  validates :descripcion, presence: true, length: { maximum: 140 }
  default_scope -> { order(created_at: :desc) }

  mount_uploader :image, ImageUploader
end
