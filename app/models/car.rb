class Car < ApplicationRecord
  belongs_to :make
  has_and_belongs_to_many :parts
  validates :name, presence: true
  validates :vin, format: { with: /(?:^|\D)\d{10}(?:\D|$)/, message: "Please enter a valid VIN (positive 10 digit integer)"}
end
