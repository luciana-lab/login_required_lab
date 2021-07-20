class SecretsController < ApplicationController
    # should redirect to login if you're not logged in
    # should show you the secret if you're logged in
    before_action :require_logged_in

    def show
    end
end