class Good < ApplicationRecord
  has_one :sku
  has_many_attached :photos
  enum status: ["上架", "進貨中", "下架"]
  validates :name, :price, :status, :discount, presence: true
end
