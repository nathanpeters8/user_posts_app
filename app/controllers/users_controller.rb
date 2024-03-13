class UsersController < ApplicationController
    skip_before_action :verify_authenticity_token

    # handle post request to create new user
    def create
       @user = User.create(username: params[:username], email: params[:email], first_name: params[:first_name], last_name: params[:last_name])
        
       render json: @user
    end
end
