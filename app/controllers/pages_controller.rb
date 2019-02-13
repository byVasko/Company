class PagesController < ApplicationController
	def about
    end

	def index
		@article = Article.paginate(page: params[:page], per_page: 5)
	end
end
