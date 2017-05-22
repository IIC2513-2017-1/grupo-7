class Cart < ApplicationRecord
  belongs_to :user
  has_many :articulo, dependent: :destroy
end
