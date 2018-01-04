class AttendsController < ApplicationController

	def index
  		@attend = Attend.all
	end

	def show
		@attend = Attend.find(params[:id])
	end

	def new
		@attend = Attend.new
	end

	def create
		@attend = Attend.create(firstname: params[:firstname], lastname: params[:lastname], age: params[:age], likesbeer: params[:likesbeer])
   		redirect_to attends_path
	end

	def edit
		@attend = Attend.find(params[:id])
	end

	def update
		@attend = Attend.find(params[:id])
		@attend.update(firstname: params[:firstname], lastname: params[:lastname], age: params[:age], likesbeer: params[:likesbeer])
   		redirect_to attends_path
   	end

   	def destroy
   		@attend = Attend.find(params[:id])
   		@attend.delete
   		redirect_to attends_path
   	end
end
