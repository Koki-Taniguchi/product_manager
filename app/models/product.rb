class Product < ApplicationRecord
  def self.search(word)
    word.present? ? Product.where(title: word) : Product.all
  end
end
