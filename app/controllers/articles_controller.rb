class ArticlesController < ApplicationController
  before_action :set_article, only: [ :edit, :update, :show, :destroy ]
  def index
    @articles = Article.all
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(params_article)
    if @article.save
      redirect_to articles_path(@tasks)
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @article.update(params@article)
      redirect_to articles_path(@article)
    else
      render :edit
    end
  end

  def show
  end

  def destroy
    @article.destroy
    redirect_to articles_path(@articles)
  end

  def set_article
  	@article = Article.find(params[:id])
  end

end
