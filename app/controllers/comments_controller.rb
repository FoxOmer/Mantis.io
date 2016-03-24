class CommentsController < ApplicationController

	def create
		@post = Post.find(params[:post_id])
		@comment = @post.comments.create(params[:comment]).permit(:comment)
		if @comment.save!
			redirect_to post_path(@path)
		else
			render 'new'
		end
	end	

end
