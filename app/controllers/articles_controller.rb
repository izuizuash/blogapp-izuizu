class ArticlesController < ApplicationController
  def index
    @articles = Article.all
    # render 'home/index'
  end
  def show
    @article = Article.find(params[:id])
  end
end