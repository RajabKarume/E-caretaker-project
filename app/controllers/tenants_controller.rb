class TenantsController < ApplicationController
    def index
        render json: Tenant.all
    end
end