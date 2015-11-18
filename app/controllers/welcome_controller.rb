class WelcomeController < ApplicationController
	before_action :authenticate_admin!, only: [:dashboard]
	def index
  		if user_signed_in?
  			@tus_articulos = Article.where(user: current_user).order('id DESC').paginate(page: params[:page], per_page: 7)
  		end
	end 

	def dashboard
		@articles = Article.all.order('id DESC').paginate(page: params[:page], per_page: 7)
	end
end