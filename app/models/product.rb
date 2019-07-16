class Product < ApplicationRecord
  belongs_to :shop

  validates :title, length: { maximum: 100 }
  validates :text, length: { maximum: 500 }

  mount_uploader :image, ImageUploader

  def self.search(word)
    word.present? ? Product.where("title LIKE ?", "%#{word}%") : Product.all
  end
end
