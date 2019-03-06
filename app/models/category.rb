class Category < ApplicationRecord
  has_many :products, dependent: :destroy

  validates :name, presence: true,
    length: {maximum: Settings.models.user.max_length_name}
end
