class Articulo < ApplicationRecord
  ratyrate_rateable 'rating'
  belongs_to :user
  has_many :comentarios
  validates :descripcion, presence: true, length: { maximum: 140 }
  default_scope -> { order(created_at: :desc) }

  mount_uploader :image, ImageUploader

  def self.search(search)
    where("name ILIKE ?", "%#{search}%")
  end

end
