class UsersController < ApplicationController

    has_secure_password
    
    def index 
        @users = User.all
    end

    def new 
        @user = User.new
    end 

    def create  
        User.create(username:params[:username], email:params[:email], password:params[:password])
        redirect_to '/users'
        # @user = User.new(user_params)
        # debugger
        # if @user.save 
        #     redirect_to '/users'
        # else   
        #     redirect_to '/users'
        # end

    end 

    def edit 
        @user = User.find(params[:id])
    end

    def update  
        User.find(params[:id]).update(username:params[:username], email:params[:email], password:params[:password])
        redirect_to '/users'
    end


    def user_params  
    #    params.require(:username, :email, :password).permit
        params.require(:user).permit(:username, :email, :password)
    end 
end
