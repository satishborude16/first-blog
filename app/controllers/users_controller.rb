class UsersController < ApplicationController

	 def index 
	 		 @users = User.all
	 end
	 
	 def new
	 	@user = User.new
	 end

	 def create
	 	@user = User.new(as_params)
		@user.save
		redirect_to users_path
	 end

	 def edit
	 	@user = User.find(params[:id])
	 end

	 def update
	 	@user = User.find(params[:id])
		@user.update_attributes(as_params)
		redirect_to users_path
	 end
	 def show
	 end
	 def destroy
	 	@user = User.find(params[:id])
		@user.destroy
		redirect_to users_path
	 end

	 private
		def as_params
			params.require(:user).permit(:name, :age, :phone, :email, :city)
		end




end
