class Gear < ApplicationRecord
  belongs_to :user
  belongs_to :genre
  has_one_attached :image
  validates :name, presence: true
  validates :maker, presence: true
  # validates :image, presence: true　ActiveStorage 導入でimageカラム削除
  
end
