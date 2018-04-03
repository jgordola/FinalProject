class Product < ApplicationRecord
  belongs_to :category
  validates :name, :product_price, :quantity, :description, :category_id, presence: true
  mount_uploader :image, ImageUploader
end
