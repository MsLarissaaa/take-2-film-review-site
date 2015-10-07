class CommentsController < ApplicationController
  def new
    @comment = Comment.new
    # render partial: "comments/new_comment_form", layout: false
    respond_to do |format|
        format.html { redirect_to film_path(@film) }
        format.js
    end
  end

  def create
    @film = Film.find(params[:film_id])
    @review = @film.reviews.find(params[:review_id])
    @comment = @review.comments.build(comment_params) 

    if @comment.save
    respond_to do |format|
      # if @comment.save
        format.html { redirect_to film_path(@film) }
        format.js
    end
  else
    head 500
  end

  end

  def destroy
  end

  private

  def comment_params
    params.require(:comment).permit(:content)
  end

end
