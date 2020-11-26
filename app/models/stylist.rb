class Stylist < ApplicationRecord
    has_many :clients, through: :appointments
end
