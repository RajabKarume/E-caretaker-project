class SessionsController < ApplicationController
    def create
        user = User.find_by(username: params[:username])
        if user&.authenticate(params[:password])
            session[:user_id] = user.id
            render json: user
        else
            render json: { error: "Not authorized" }, status: :unauthorized
        end
    end
    def destroy
        if session.include? :user_id
            session.delete :user_id
            head :no_content
        else
            render json: { error: "You're not logged in" }, status: :unauthorized
    end
end