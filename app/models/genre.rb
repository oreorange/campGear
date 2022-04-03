class Genre < ApplicationRecord
  has_many :gears, dependent: :destroy
end
