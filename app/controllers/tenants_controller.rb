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

    end

    # private
    # def tenant_params
    #     params.permit()
    # end
end
