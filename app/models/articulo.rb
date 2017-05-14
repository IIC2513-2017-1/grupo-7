class Articulo < ApplicationRecord
  belongs_to :user
  validates :descripcion, presence: true, length: { maximum: 140 }
  validates :user_id, presence: true
  default_scope -> { order(created_at: :desc) }
end
