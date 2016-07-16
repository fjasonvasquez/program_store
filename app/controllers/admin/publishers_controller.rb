class Admin::PublishersController < ApplicationController
	before_action :require_signin
	before_action :require_admin
	before_action :set_publisher, except: [:index, :new, :create]

	def index
		@publishers = Publisher.all 
	end

	def show
	end

	def new
		@publisher = Publisher.new
	end

	def create
		@publisher = Publisher.new(publisher_params)
		if @publisher.save
			flash[:success] = 'Publisher has been created.'
			redirect_to @publisher
		else
			flash[:danger] = 'Publisher has not been created.'
			render :new
		end
	end
		
end