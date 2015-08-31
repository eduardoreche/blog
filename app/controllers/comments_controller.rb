class CommentsController < ApplicationController
	def create
	  @post = Post.find(params[:post_id])
	  @comment = @post.comments.create!(post_params)
	  redirect_to @post, :notice => "Comment created!"  
	end

  private
  # Never trust parameters from the scary internet, only allow the white list through.
  def post_params
    params.require(:comment).permit(:name, :text)
  end

end
