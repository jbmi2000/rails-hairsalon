class ClientController < ApplicationController

    before_action :find_client, only: [:show, :edit, :update, :destroy]

    def index
        @clients = Client.all
    end
    
    def new
        @stylist = Stylist.new
        @client = Client.new
    end

    def create
        @client = Client.new(client_params)
        if @client.save
            redirect_to stylist_path(@client)
        else
            render :new
        end
        
    end

    def show
    end

    def edit
    end

    def update
    end

    def destroy
        @client.destroy
        redirect_to client_index_path
    end




    
end

private

def find_client
    @client = Client.find_by(id: params[:id])
end

