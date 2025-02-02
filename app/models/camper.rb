class Camper < ApplicationRecord
    has_many :signups
    has_many :activities, through: :signups

    validates :name, uniqueness: true
    validates :age, numericality: { greater_than: 7 }
    validates :age, numericality: { less_than: 19 }
end
