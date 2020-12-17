class Appointment < ApplicationRecord
    belongs_to :stylist
    belongs_to :client

    scope :stylists_with_appointments, -> { where( "stylist_id > 1" )}
    scope :client, -> { where ( "client_id  > 30" )}
    
end
