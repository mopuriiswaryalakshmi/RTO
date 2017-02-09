module Api
	module V1
		class RegistrationNumbersController < ApplicationController
			before_action :check_access_token

			def index
				if !@user.nil?
					#access_token = params[:access_token]
					#reg_no = params[:reg_no]
                   @registration_number = RegistrationNumber.find_by_name(params[:reg_no])
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
