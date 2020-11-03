class UsersController < ApplicationController

	def show
	end
	def update
	end
	def edit
		@user = User.find(params[:id])
	end

	private
		def user_params
			params.require(:user).permit(:name, :introduction)
end
