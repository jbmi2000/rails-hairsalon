class StylistController < ApplicationController

   before_action :find_stylist, only: [:show]

    def new
        @stylist = Stylist.new
    end

    def create
        @stylist = Stylist.new(stylist_params)

        if @stylist.save
         # session[:stylist_id] = @stylist.id
          redirect_to login_path
        else
          render :new
        end
    end

    def edit
    end

    def show
     
    end

    def destroy     
    end

    private

    def find_stylist
      @stylist = Stylist.find_by_id(session[:stylist_id])
      redirect_to login_path if !@stylist
    end

    def stylist_params
      params.require(:stylist).permit(:name, :email, :password, :password_confirmation)
    end
    
end
