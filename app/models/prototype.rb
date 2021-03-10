class Prototype < ApplicationRecord
  belongs_to :user
  has_many :comments,dependent: :destroy

  has_one_attached :image
  validates :title,               null: false
  validates :catch_copy,          null: false
  validates :concept,             null: false
  validates :image, presence: true

end
