class Gear < ApplicationRecord
  belongs_to :user
  attachment :image
end
