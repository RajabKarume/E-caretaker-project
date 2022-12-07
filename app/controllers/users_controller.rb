class UsersController < ApplicationController

    rescue_from ActiveRecord::RecordInvalid, with: :record_unprocessable    
    # rescue_from ActiveRecord::RecordUnprocessable, with: :record_not_authorized  

    def index
        render json: User.all
    end
    def create
        user = User.create!(user_params)
        render json: user, status: :created

    end
    def show
        user = User.find_by(id: session[:user_id])
        render json: user, status: 201
    end

    private
    def user_params
        params.permit(:username, :password, :password_confirmation)
    end
    def record_unprocessable
        render json: { errors: ["Unprocessable"] }, status: :unprocessable_entity
    end
   
end