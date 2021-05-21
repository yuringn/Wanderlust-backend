class LocationsController < ApplicationController
    
    def index
        locations = Location.order(:id)
        render json: locations
    end

    def show
        location = Location.find(params[:id])
        if location
            render json: location
        else
            render json: {error: "Cannot find this post"}
        end
end
