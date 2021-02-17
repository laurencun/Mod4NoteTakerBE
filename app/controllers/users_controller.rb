class UsersController < ApplicationController

    def index
        users = User.all 
        render json: users, include: :todos
    end


    def create 
        user = User.create(username: params[:username], password: params[:password])
    end

end
