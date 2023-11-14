class ArticlesController < ApplicationController

  before_action :article_find, only: %i[show edit destroy update]

  def index
    @articles = Article.all
  end

  def show
  end


  def new
    @article = Article.new
  end

  def create
    article = Article.new(article_permission)
    article.save
    redirect_to articles_path
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def article_permission
    params.require(:article).permit(:title, :content)
  end

  def article_find
    @article = Article.find(params[:id])
  end
end
