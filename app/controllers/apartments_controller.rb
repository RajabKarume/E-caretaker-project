class ApartmentsController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :record_not_found
    rescue_from ActiveRecord::RecordInvalid, with: :record_not_valid

    def index
        render json: Apartment.all
    end
    def show
        apartment = Apartment.find_by(id: params[:id])
        if apartment
            render json: apartment
        else
            render json: { error: "Apartment not found" }, status: 404
        end
    end
    def create
        apartment = Apartment.create(apartment_params)
        render json: apartment, status: :created
    rescue ActiveRecord::RecordInvalid => e
        render json: { errors: e.record.errors.full_messages }, status: :unprocessable_entity
    end
    def update
        apartment = Apartment.find_by(id: params[:id])
        if apartment
            apartment.update(apartment_params)
            render json: apartment
        else
            render json: { error: "Apartment not found" }, status: 404
        end
    end
    def destroy
        apartment = Apartment.find_by(id: params[:id])
        if apartment
            apartment.destroy
            head :no_content
        else
            render json: { error: "Apartment not found" }, status: 404
        end
    end

    private
    def apartment_params 
        params.permit(:name, :location, :user_id)
    end
end
