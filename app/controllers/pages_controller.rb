class PagesController < ApplicationController
	def about
    end

	def index
		@article = Article.all
	end
end
