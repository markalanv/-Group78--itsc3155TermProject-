class RepliesController < ApplicationController
     def create
        @article = Article.find(params[:article_id])
        @reply = @article.replies.create(reply_params)
        redirect_to article_path(@article)
     end
    
    private
        def reply_params
            params.require(:reply).permit(:name, :date, :reply)
        end
end
