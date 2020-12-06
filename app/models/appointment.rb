class Appointment < ApplicationRecord
    belongs_to :stylists
    belongs_to :clients
end
