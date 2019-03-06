class Product < ApplicationRecord
  belongs_to :category
  has_many :order_details
  has_many :ratings, dependent: :destroy

  validates :name, presence: true,
    length: {minimum: Settings.models.suggest.max_length}
  validates :describe, presence: true
  validates :price, presence: true
  validates :avg_rate, presence: true
end
