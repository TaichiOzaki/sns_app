class Topic < ApplicationRecord
  validates :title, {presence: true, lengh: {maximum: 100}}
  validates :body, presence: true

  has_one_attached :image
end
