class TenantsController < ApplicationController

    def index
        user = User.find(session[:user_id])
        render json: Tenant.all, status: 200
    end
    def show
        user = User.find(session[:user_id])
        tenant = Tenant.find_by(id: params[:id])
        if tenant
            render json: tenant      
        else
            render json: {error: "Tenant not found"}, status: 404
        end
    end
    def create
        user = User.find(session[:user_id])
        tenant = Tenant.create(tenant_params)
        render json: tenant, status: :created
    rescue ActiveRecord::RecordInvalid => e
        render json: { errors: e.record.errors.full_messages }, status: :unprocessable_entity
    end
    def update
        user = User.find(session[:user_id])
        tenant = Tenant.find_by(id: params[:id])
        if tenant
            Tenant.update(tenant_params)
            render json: tenant      
        else
            render json: {error: "Tenant not found"}, status: 404
        end
    end
    def destroy
        user = User.find(session[:user_id])
        tenant = Tenant.find_by(id: params[:id])
        if tenant
            Tenant.destroy
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