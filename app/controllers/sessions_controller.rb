class SessionsController < ApplicationController
    def new
    end

    def create
        # redirects to login page if :name is nil
        # redirects to login page if :name is empty
        # sets session[:name] if :name was given
        session[:name] = params[:name]
        if session[:name].nil? || session[:name].blank?
            redirect_to login_path
        else
            redirect_to secret_path
        end
    end

    # leaves session[:name] nil if it was not set
    # clears session[:name] if it was set
    def destroy
        session.delete :name
        redirect_to login_path
    end
end