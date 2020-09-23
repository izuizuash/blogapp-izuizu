class ArticlesController < ApplicationController
  def index
    @articles = Article.all
    # render 'home/index'
  end
  def show
    @article = Article.find(params[:id])
  end

  def new
    @article = Article.new
  end

def create
  @article = Article.new(article_params)
  if @article.save
    redirect_to article_path(@article), notice: '保存しました！'
  else
    flash.now[:error] = '保存に失敗しました'
    render :new
  end
end

  private
  def article_params
    params.require(:article).permit(:title, :content)
  end
end