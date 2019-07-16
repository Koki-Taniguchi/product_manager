class Product < ApplicationRecord
  mount_uploader :image, ImageUploader
  def self.search(word)
    word.present? ? Product.where(title: word) : Product.all
  end
end
