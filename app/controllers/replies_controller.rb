class RepliesController < ApplicationController
    
    
     def create
        @article = Article.find(params[:article_id])
        @reply = @article.replies.create(reply_params)
        @reply.name = current_user.name
        @reply.save
        redirect_to article_path(@article)
     end
    def destroy
        @article = Article.find(params[:article_id])
        @reply = @article.replies.find(params[:id])
        @reply.destroy
        redirect_to article_path(@article)
    end
    
    
    private
        def reply_params
            params.require(:reply).permit(:userid, :name, :date, :reply)
            
        end
end
