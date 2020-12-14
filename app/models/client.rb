class Client < ApplicationRecord
    
    has_many :appointments
    has_many :stylists, through: :appointments

    validates :name, presence: true
    validates :phone_number, presence: true, format: { with: /\d{3}\-\d{3}\-\d{4}/, message: "Please enter a valid phone number, formatted xxx-xxx-xxxx"}
    validates :notes, presence: true
end
