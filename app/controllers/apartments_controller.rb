class ApartmentsController < ApplicationController

    def index
        render json: Apartment.all
    end
    # def index
    #     user = User.find(session[:user_id])
    #     if apartment.user_id == user_id
    #         render json: Apartment.all, status: 200
    #     end
    # end
    # def create
    #     user = User.find(session[:user_id])
    #     apartment = Apartment.create(apartment_params)
    #     if apartment.valid?
    #         render json: apartment, status: :created
    #     else
    #         render json: { errors: user.errors.full_messages }, status: 422
    # end

    # private
    # def apartment_params 
    #     params.permit(:name, :location, :user_id)
    # end
end
