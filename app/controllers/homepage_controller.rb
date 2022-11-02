class HomepageController < ApplicationController

    def index
        flash.now[:notice] = "HELLO"
        if session[:user_id]
            @user = User.find_by(id: session[:user_id])
        end
       
    end

    def content

    end

end