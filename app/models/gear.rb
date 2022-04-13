class Gear < ApplicationRecord
  belongs_to :user
  belongs_to :genre
  has_one_attached :image
  validate :image_type
  validates :name, presence: true
  validates :maker, presence: true
  # validates :image, presence: true　ActiveStorage 導入でimageカラム削除
  
  private
  
  def image_type
    if !image.blob.content_type.in?(%('image/jpeg image/png'))
      image.purge # Rails6では、この1行は必要ありません
      errors.add(:image, 'はJPEGまたはPNG形式を選択してアップロードしてください')
    end
  end
  
  def thumbnail input # resize 強制メソッド？
  return self.images[input].variant(resize: '300x300!').processed
  end
  
end
