class UsersController < ApplicationController
    def index
        @users = User.all
    end
    

    def new
        @user = User.new
    end

    def create
        @object = User.new(params[:object])
        if @object.save
          redirect_to @user
        else
          render 'new'
        end
    end

    private
    def user_params
        params.require(:user).permit(:username, :password, :email)
    end
    
    
end
