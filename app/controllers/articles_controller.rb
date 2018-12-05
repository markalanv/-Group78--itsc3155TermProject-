class ArticlesController < ApplicationController
  include SessionsHelper
    
    
    
    helper_method :current_user
    helper_method :logged_in?
    
    before_action :require_login
     
  
   def index
       @articles= Article.all
      end
      
   
  def show
    @article = Article.find(params[:id])
  end
  
    def new
      if (current_user.email.split("@").last == ('uncc.edu'))
      @article = Article.new
    else
    end
    end
    
    
    
    def create
        @article = Article.new(article_params)
        
        
    if @article.save 
      
      redirect_to @article 
      else
        render 'new' 
    end
    end
    
    def edit
      @article = Article.find(params[:id])
    end

    def update
      @article= Article.find(params[:id])
      
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
end
private 
  def article_params
    params.require(:article).permit(:name, :category,:title, :text, :image)
  end
