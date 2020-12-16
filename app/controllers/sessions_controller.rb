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

    def google_login
        user_email = request.env['omniauth.auth']['info']['email']
        user_name = request.env['omniauth.auth']['info']['name']
        @stylist = Stylist.find_or_create_by(email: user_email) do |stylist|
            stylist.name = user_name
            stylist.password = SecureRandom.hex
            # byebug
            stylist.password_confirmation = stylist.password
        end
        session[:stylist_id] = @stylist.id
        redirect_to stylist_path(@stylist)            
    end

end
