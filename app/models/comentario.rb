class Comentario < ApplicationRecord
  belongs_to :articulo, dependent: :destroy
end
