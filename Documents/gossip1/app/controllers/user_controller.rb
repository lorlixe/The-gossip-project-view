class UserController < ApplicationController
    def show
        @first_name = params[:id]
    end 

    def edit
        @profil = User.find(params[:id])
    end
end
