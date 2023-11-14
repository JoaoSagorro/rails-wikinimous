class ArticlesController < ApplicationController

  before_action :article_find, only: %i[show edit destroy update]

  def index
    @articles = Article.all
  end

  def show
  end


  def new
    @articles = Article.new
  end

  def create
    articles = Article.new(article_permission)
    articles.save
    
    redirect_to artitcles_path
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
    @articles = Article.find(params[:id])
  end
end
