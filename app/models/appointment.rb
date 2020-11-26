class Appointment < ApplicationRecord
    belongs_to :stylists
    belongs to :clients
end
