class HomepageController < ApplicationController

    def index
        flash.now[:notice] = "HELLO"
        flash.now[:alert] = "Invalid"
    end

    def content

    end

end