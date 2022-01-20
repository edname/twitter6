class ApplicationController < ActionController::Base
    # before_action :authenticate_user!, only: [:index]
    # skip_before_action :authenticate_user!
     before_action :authenticate_user!
end
