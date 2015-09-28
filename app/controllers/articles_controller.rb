class ArticlesController < ApplicationController
  def new
  end
  def create 
    render plain: params[:article].inspect
  end
  def index
    @articles = Article.all
  end
  def show
  end
end
