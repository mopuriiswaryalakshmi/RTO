module Api
	module V1
		class StatesController < ApplicationController
			before_action :check_access_token

			def index
				if !@user.nil?
                   @state = State.find_by_name(params[:state])
                   @user.update_attributes(request_limit: @user.request_limit - 1)

			    end
		    end
		    private

		    def check_access_token
			    if params[:access_token]
				   @user = User.find_by_access_token(params[:access_token])
			    end
			      return @user
			end
		end
	end
    
end