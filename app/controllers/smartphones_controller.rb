class SmartphonesController < ApplicationController
	def index
	end

	def new
		@smartphone = Smartphone.new
	end

	def create
		@smartphone = Smartphone.new(smartphone_params)
		if(@smartphone.save)
			redirect_to @smartphone
		else
			render 'new'
		end
	end

	def show
		@smartphone = Smartphone.find(params[:id])
	end

	def edit
		@smartphone = Smartphone.find(params[:id])
	end

	def update
		@smartphone = Smartphone.find(params[:id])
		if(@smartphone.update(smartphone_params))
			redirect_to @smartphone
		else
			render 'edit'
		end
	end

	def destroy
		@smartphone = Smartphone.find(params[:id])
		@smartphone.destroy
		redirect_to smart_path
	end

	private def smartphone_params
		params.require(:smartphone).permit(:title, :display, :processor, :ram, :rom, :battery, :os, :image)
	end
end