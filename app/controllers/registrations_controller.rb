require 'pry'

class RegistrationsController < ApplicationController
    def new
        @user = User.new
    end

    def create
        @user = User.new(user_params)
        binding.pry
        if @user.save
            session[:user_id] = @user.id
            redirect_to homepage_path, notice: "Successfully created account"
        else
            flash.now[:alert] = "Please try again"
            render :new
        end


    end

    private
    def user_params
        params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation)
    end


end