class Recipe < ApplicationRecord
  belongs_to :chef
  validates :recipename, presence: true, length: {minimum:5, maximum: 50}
  validates :summary, presence: true, length: {miminum:10, maximum:100}
end
