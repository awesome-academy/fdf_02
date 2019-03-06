class Order < ApplicationRecord
  belongs_to :user
  has_many :order_details

  validates :status, presence: true, numericality: {only_integer: true}
  enum status: {pending: 0, reject: 1, accept: 2}
end
