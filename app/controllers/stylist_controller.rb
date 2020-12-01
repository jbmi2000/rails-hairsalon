class StylistController < ApplicationController

    def new
        @stylist = Stylist.new
    end

    def create
        @stylist = Stylist.new(stylist_params)
        if @stylist.save
          session[:stylist_id] = @stylist.id
          redirect_to login_path(@stylist)
        else
          render :new
        end
    end

    def edit
    end

    def show
    end

    private

    def stylist_params
      params.require(:stylists).permit(:email, :password)
    end
    
end
