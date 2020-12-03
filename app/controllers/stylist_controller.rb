class StylistController < ApplicationController

    def new
        @stylist = Stylist.new
    end

    def create
        @stylist = Stylist.new(stylist_params)
        byebug
        if @stylist.save
          session[:stylist_id] = @stylist.id
          redirect_to stylist_path
        else
          render :new
        end
    end

    def edit
    end

    def show
    end

    private

    def find_stylist
      @stylist = Stylist.find_by_id(session[:user_id])
      redirect_to login_path if !@stylist
    end

    def stylist_params
      params.require(:stylists).permit(:name, :email, :password)
    end
    
end
