class Part < ApplicationRecord
    has_and_belongs_to_many :cars
    validates :name, presence: true
    validates :quantity, format: { with: /\A\d+\z/ }
end
