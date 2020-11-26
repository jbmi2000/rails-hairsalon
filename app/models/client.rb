class Client < ApplicationRecord
    has_many :stylists, through: :appointments
end
