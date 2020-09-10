class ArticlesController < ApplicationController
  def index
    @article = Article.first
    # render 'home/index'
  end
  
end