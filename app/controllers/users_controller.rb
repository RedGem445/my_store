class UsersController < ApplicationController
	def new 
		@user = User.new
	end

	def create
		@user = User.create (user_params)

		if @user.errors.empty?

      		render 'show'
      	else
      		render 'new'

      	end

	end

	private

		def user_params
      		params.require(:user).permit(:login,:password,:email)
    	end



end
