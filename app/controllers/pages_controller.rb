class PagesController < ApplicationController
	def about
    end

    def smart
    	@smartphone = Smartphone.all
    end

	def index
		@article = Article.paginate(page: params[:page], per_page: 4)
	end
end
