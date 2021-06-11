class CampersController < ApplicationController

    def index 
        camper = Camper.all
        render json: camper
    end
    
    def show
        camper = Camper.find(params[:id])
        render json: camper
    rescue
        render json: { error: "Camper not found" }, status: 404
    end

    def create 
        camper = Camper.create(params.permit(:name, :age))
    if camper.valid?
        render json: camper, status: :created
    else
        render json: { "errors": camper.errors.full_messages }, status: 422
    end
    end
end
