class ArticlesController < ApplicationController

  def index
    @articles= Article.all
  end

  def show
    @Article = Article.find(params[:id])
  end

  def new
    @Article= Article.new
  end

  def create
    Task.create(Article_params)
    redirect_to articles_path
  end

  def edit
    @Article = Article.find(params[:id])
  end

  def update

    @Article = Article.find(params[:id])

    @Article.update(Article_params)

    redirect_to articles_path
  end

  def destroy
    @Article = Article.find(params[:id])
    @Article.destroy

    redirect_to articles_path
  end

  private

  def set_article
    @task = Article.find(params[:id])
  end

  def article_params
    params.require(:task).permit(:title, :texte)
  end
end
