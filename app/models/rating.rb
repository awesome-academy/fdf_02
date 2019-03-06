class Rating < ApplicationRecord
  belongs_to :product
  belongs_to :user

  validates :rate, presence: true, numericality: {only_integer: true}
end
