class ActivitiesController < ApplicationController

    def index 
        activity = Activity.all
        render json: activity
    end

    def destroy
        activity = Activity.find(params[:id])
        activity.destroy
        signups = Signup.find_by(activity_id: params[:id])
        signups.destroy
    rescue
        render json: { error: "Activity not found" }, status: 404
    end
end
