class Recipe < ApplicationRecord
  belongs_to :chef
  validates :chef_id, presence: true
  validates :recipename, presence: true, length: {minimum:5, maximum: 50}
  validates :summary, presence: true, length: {miminum:10, maximum:100}
  mount_uploader :picture, PictureUploader
  validate :picture_size

  private
  def picture_size
    if picture.size > 5.megabytes
      errors.add(:picture, "should be less than 5MB")
    end
  end
end
