class ClientController < ApplicationController

    before_action :find_client, only: [:show, :edit, :update, :destroy]

    def index
        @clients = Client.all
    end
    
    def new
        @client = Client.new
    end

    def create
        
        @client = Client.new(client_params)
        if @client.save
            redirect_to client_path(@client)
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

def client_params
    params.require(:client).permit(:name, :phone_number, :notes)
end

