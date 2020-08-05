class Good < ApplicationRecord
  has_many_attached :photos
  enum status: ["上架", "進貨中", "下架"]
  enum size: ["小", "中", "大"]
  enum color: ["黑", "白", "紅", "藍", "紫"]
  validates :name, :price, :status, :discount, presence: true
  validates :number, presence: true, uniqueness: true
  validates :inventory, presence: true, numericality: { greater_than_or_equal_to: 0 }
  validates :discount, presence: true, numericality:  {greater_than_or_equal_to: 0, less_than_or_equal_to: 1 }
end
