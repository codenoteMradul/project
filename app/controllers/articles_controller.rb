class ArticlesController < ApplicationController
	def index
		@article = Article.all
	end

	def show
		@article = Article.all
	end

	def new
		@article = Article.new
	end

	def create
		@article = Article.new(strong)
		if @article.save
			redirect_to @article
		else
			render :new,status: :undefine
		end
	end

	def edit
		@article = Article.find(params[:id])
	end

	def update
		@article = Article.find(params[:id])
		if @article.update(strong)
			redirect_to @article
		else
			render :edit,status: :undefine
		end
	end

	def destroy
		@article = Article.find(params[:id])
		@article.destroy
	end

	private
	def strong
    params.require(:article).permit(:name, :age, :address)
	end
end	