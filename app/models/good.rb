class Good < ApplicationRecord
  has_many_attached :photos
  enum status: ["上架", "進貨中", "下架"]
  validates :sku, presence: true, uniqueness: true
  validates :name, :price, :status, :discount, presence: true
  validates :inventory, presence: true, numericality: { greater_than_or_equal_to: 0 }
  validates :discount, presence: true, numericality:  {greater_than_or_equal_to: 0, less_than_or_equal_to: 1 }
end
