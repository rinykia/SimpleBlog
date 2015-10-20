class ArticlesController < ApplicationController
  before_filter :authenticate_user!

  def index
    @articles = Article.all
  end

  def new
  end

  def create
    @article = Article.new(article_params)
    @article.author = current_user.username

    if @article.save
      redirect_to @article
    else
      render action: 'new'
    end
  end

   def show
    @article = Article.find(params[:id])
  end

  def edit
    @article = Article.find(params[:id])
    redirect_to :root unless current_user == @article.user
  end

  def update
    @article = Article.find(params[:id])
    if @article.update(article_params)
      redirect_to @article
    else
      render action: 'edit'
    end
  end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy
    redirect_to articles_path
  end

  private

  def article_params
    params.require(:article).permit(:title, :text, :user_id)
  end

end
