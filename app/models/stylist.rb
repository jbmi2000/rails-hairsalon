class Stylist < ApplicationRecord

    has_many :appointments
    has_many :clients, through: :appointments

    has_secure_password

    validates :email, presence: true, uniqueness: true
    
end
