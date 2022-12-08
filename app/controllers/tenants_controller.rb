class TenantsController < ApplicationController
    before_action :authenticate_user
    def index
        render json: Tenant.all
    end
    def show
        tenant = Tenant.find_by(id: params[:id])
        if tenant
            render json: tenant, status: 200      
        else
            render json: {error: "Tenant not found"}, status: 404
        end
    end
    def create
        tenant = Tenant.create(tenant_params)
        render json: tenant, status: :created
    rescue ActiveRecord::RecordInvalid => e
        render json: { errors: e.record.errors.full_messages }, status: :unprocessable_entity
    end
    def update
        tenant = Tenant.find_by(id: params[:id])
        if tenant
            Tenant.update(tenant_params)
            render json: tenant, status: 200      
        else
            render json: {error: "Tenant not found"}, status: 404
        end
    end
    def destroy
        tenant = Tenant.find_by(id: params[:id])
        if tenant
            tenant.destroy
            head :no_content
        else
            render json: {error: "Tenant not found"}, status: 404
        end
    end

    private
    def tenant_params 
        params.permit(:name, :email, :phone_number, :house_number, :number_of_bedrooms, :rent, :is_paid)
    end
   

end