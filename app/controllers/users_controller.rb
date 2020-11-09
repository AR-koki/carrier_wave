class UsersController < ApplicationController

	def index
		@users = User.all
	end

	def show
		@user = User.find(params[:id])
	end
	def update
		@user = User.find(params[:id])
		redirect_to request.referer
	end
	def edit
		@user = User.find(params[:id])
	end

	private
		def user_params
			params.require(:user).permit(:name, :introduction, :avater)
		end
end
