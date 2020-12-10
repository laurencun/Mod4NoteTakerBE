class AuthController < ApplicationController

    def create 
        user = User.find_by(username: params[:username])
        if user && user.authenticate(params[:password])
            #checking password matches
            #returns false or the user object
            render json: {id: user.id, username: user.username}   
        else 
            render json: {error: 'Invalid username/password'}, status: 401
         end
    end

end