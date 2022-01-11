class UsersController < ApplicationController

    def index
        @users = User.all
        render json: @users
    end

    def create
       user = User.new(params.require(:user).permit(:name, :email))
       if user.save
        render json: user
      else
        render json: user.errors.full_messages, status: :unprocessable_entity
      end
    end

    def show
        @user = User.find(params[:id])
        render json: @user
    end

    def update
        user = User.find(params[:id])
        if user.update(params.require(:user).permit(:name, :email))
            redirect_to user_url(user.id) ##what does user_url do
        else
            render json: user.errors.full_messages, status: :unprocessable_entity
        end
    end

    def destroy
        user = User.find(params[:id])
        user.destroy
        redirect_to user_url
    end
end

#how do database entires get stored/shared bewteen machines when we are pairing?
#is there more than one way to test show, aside from typing in the url?