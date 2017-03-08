class SessionsController < ApplicationController

	def new
	end

	
  	def create
    	if params[:name] && !params[:name].empty?
      		session[:name] = params[:name]
      		redirect_to root_path
   	 	else
      		flash[:error] = "Please Enter A Valid Username"
      		redirect_to login_path
    	end
  	end

  	def destroy
  		session[:name] = nil
  		redirect_to login_path
  	end
end