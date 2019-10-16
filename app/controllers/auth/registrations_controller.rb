class Auth::RegistrationsController < ApplicationController
    def sign_up_params
        params.permit(:name, :email, :password)
    end

    def account_update_params
        params.permit(:name, :email)
    end
end
