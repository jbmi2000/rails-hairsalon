class SessionsController < ApplicationController

    render 'layouts/_errors'

    def login
        @stylist = Stylist.new
    end

    def create
        @stylist = Stylist.find_by(email: params[:stylist][:email])
    
        if @stylist && @stylist.authenticate(params[:stylist][:password])
            session[:stylist_id] = @stylist.id
            redirect_to stylist_path(@stylist)
        else
        
            flash[:message] = "Invalid User name or Password.  Please try again"
            redirect_to login_path    
            
        end
    end
    
    def logout
        session.clear
        redirect_to login_path
    end

end
