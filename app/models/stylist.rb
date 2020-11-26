class Stylist < ApplicationRecord
    has_many :clients, through: :appointments

    has_secure_password
end
