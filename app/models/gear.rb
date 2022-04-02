class Gear < ApplicationRecord
  belongs_to :user
  attachment :image
  validates :name, presence: true
  validates :maker, presence: true
  validates :image, presence: true
  
end
