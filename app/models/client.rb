class Client < ApplicationRecord
    
    has_many :appointments
    has_many :stylists, through: :appointments

    validates :name, presence: true
    # validates :phone_number, presence: true, format: { with: /\S-\S-\S/, message: "XXX-XXX-XXXX"}
    # validates :notes, presence: true
end
