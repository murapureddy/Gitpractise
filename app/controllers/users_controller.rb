class UsersController < ApplicationController
	#before_action :find_user,[:add_roles,:update_roles]
	def index
      @users = User.all
	end

	def add_roles
     @user = User.find(params[:id])
	end

	def update_roles
		@user = User.where(id: params[:user])
       @user.roles << Role.where(name: params[:admine])
      debugger
	end


	def abcdef
	end

	private 
	def find_user
     # @user = User.find(params[:id])
	end
end
