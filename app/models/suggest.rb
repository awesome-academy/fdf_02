class Suggest < ApplicationRecord
  belongs_to :user

  validates :name, presence: true,
    length: {maximum: Settings.models.suggest.max_length}
  validates :descibe, presence: true
  validates :name, presence: true
end
