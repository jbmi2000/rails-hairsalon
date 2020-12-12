class AppointmentController < ApplicationController

    def index
        @stylist = Stylist.find_by(id: current_user.id)
        
        @apps = @stylist.appointments
        
    end

    def new
        # byebug
        @app = Appointment.new
        @client = Client.find_by(id: params[:client_id])
    
    end

    def create
        # byebug
        @app = current_user.appointments.build(appt_params)
        @client = Client.find_by(id: params[:client_id])
        @app.client = @client
         # byebug
        if @app.save
            redirect_to client_appointment_path(@app.client, @app )
        else
            render :new

    end

    def show
        
       @app = Appointment.find_by(id: params[:id])
       # byebug
       # redirect_to client_appointment_path()
    end


    end

    def destroy
    end
    
end

private

def appt_params
    params.require(:appointment).permit(:date, :stylist_id, :client_id)
end

def client_params
    params.require(:client).permit(:name, :phone_number, :notes)
end
