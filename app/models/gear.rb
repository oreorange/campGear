class Gear < ApplicationRecord
  belongs_to :user
  belongs_to :genre
  attachment :image
  validates :name, presence: true
  validates :maker, presence: true
  validates :image, presence: true
  
end
