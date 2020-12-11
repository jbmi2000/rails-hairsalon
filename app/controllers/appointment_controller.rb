class AppointmentController < ApplicationController

    def index
        @stylist = Stylist.find_by(id: current_user.id)
        
        @apps = @stylist.appointments
        
        end

    def new
        # @client = Client.find_by(id: client.id)
    
    end

    def create
    end

    def destroy
    end
    
end
