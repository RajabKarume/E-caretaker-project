class TenantsController < ApplicationController
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
        user = User.find(session[:user_id])
        tenant = Tenant.create( name: tenant_params[:name], email: tenant_params[:email], phone_number: tenant_params[:phone_number], house_number: tenant_params[:house_number], number_of_bedrooms: tenant_params[:number_of_bedrooms], rent: tenant_params[:rent], is_paid: tenant_params[:is_paid])
        render json: tenant, status: :created
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
        # if tenant
            tenant.destroy
            head :no_content
        # else
        #     render json: {error: "Tenant not found"}, status: 404
        # end
    end

    private
    def tenant_params 
        params.permit(:name, :email, :phone_number, :house_number, :number_of_bedrooms, :rent, :is_paid)
    end
   

end