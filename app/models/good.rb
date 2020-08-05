class Good < ApplicationRecord
  has_one :sku
  enum status: ["上架", "進貨中", "下架"]
  validates :name, :price, :status, :discount, presence: true
end
