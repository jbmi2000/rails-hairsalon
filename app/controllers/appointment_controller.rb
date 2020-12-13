class AppointmentController < ApplicationController

    def index
        
        @stylist = Stylist.find_by(id: current_user.id)
        
        @apps = @stylist.appointments
        # byebug
        
    end

    def new
        @app = Appointment.new
        @client = Client.find_by(id: params[:client_id])
    
    end

    def create
        @app = current_user.appointments.build(appt_params)
        @app.client_id = params[:client_id]
        if @app.save
            redirect_to client_appointment_path(@app.client, @app )
        else
            render :new
        end

    end

    def show
        
       @app = Appointment.find_by(id: params[:id])
       # byebug
       # redirect_to client_appointment_path()
    end

    def edit
       @app = Appointment.find_by(id: params[:id]) 
    end

    def update
    end
    
   

    def destroy
        @app = Appointment.find_by(id: params[:id])
        @app.destroy
        redirect_to appointment_index_path
    end

    private

    def appt_params
        params.require(:appointment).permit(:date, :stylist_id, :client_id)
    end

    
    
end



