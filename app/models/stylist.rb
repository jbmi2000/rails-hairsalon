class Stylist < ApplicationRecord

    has_many :appointments
    has_many :clients, through: :appointments

    has_secure_password

    validates :name, presence: true
    validates :email, presence: true, uniqueness: true, format: { with: /\S+@\S+\.\S+/, message: "Please enter a valid email address"}
    validates :password, confirmation: true
    validates :password_confirmation, presence: true


    
end
