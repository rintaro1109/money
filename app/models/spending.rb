class Spending < ApplicationRecord
  belongs_to :tag

  validates :price, presence: true, length: {maximum: 9}
end
