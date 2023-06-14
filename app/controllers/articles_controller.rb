class ArticlesController < ApplicationController
  before_action :correct_user, only: %i[destroy edit]

  def show
    @article = Article.find(params[:id])
  end

  def index
    if Current.user
      @articles = Article.all
    else
      redirect_to root_path
    end
  end

  def new
    @article = Article.new
  end

  def edit
    @article = Article.find(params[:id])
  end

  def create
    @article = Article.new(article_params)
    if @article.save
      redirect_to @article
    else
      render 'new'
    end
  end

  def update
    @article = Article.find(params[:id])
    if @article.update(article_params)
      redirect_to @article
    else
      render 'edit'
    end
  end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy
    redirect_to articles_path
  end

  def correct_user
    @article = Article.find(params[:id])
    unless Current.user.id == @article.user_id
      redirect_to articles_path, notice: 'Not authorized to do this action'
    end
  end

  private

  def article_params
    params.require(:article).permit(:title, :description, :user_id)
  end
end
