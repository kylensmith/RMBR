class CommentsController < ApplicationController
	def create
		Comment.create(comment_param)
		redirect_to request.referer
	end

	private

	def comment_param
		params.require(:comment).permit(:picture_id, :user_id, :comment_text)
	end

end
