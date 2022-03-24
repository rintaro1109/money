class Tag < ApplicationRecord
 has_many :spendings

 validates :name, presence: true, length: {maximum: 20}
end
