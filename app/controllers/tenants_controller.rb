class TenantsController < ApplicationController
    def index
        render json: Tenant.all
    end
    def show
        tenant = Tenant.find_by(id: params[:id])
        if tenant
            render json: tenant
        else
            render json: { error: "Not found" }, status: 404
        end
    end
    def create
        tenant = Tenant.create(tenant_params)
        render json: tenant, status: :created
    end

    private
    def tenant_params
        params.permit(:id, :name, :phone_number, :email, :house_number, :number_of_bedrooms, :rent_amount, :is_paid)
    end
end
