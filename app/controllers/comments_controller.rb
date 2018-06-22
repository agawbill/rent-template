class CommentsController < ApplicationController

	def index
		@comments = Comment.all
	end

	def create
		property = Property.find(params[:property_id])
		@comment = Comment.create(comment_params)
		@comment.user_id = current_user.id
		@comment.property_id = property.id
		if @comment.save
			redirect_back(fallback_location: root_path)
		else 
			render "/properties/#{property.id}"
		end	
	end
	


	private

	def comment_params
		params.require(:comment).permit(:content, :property_id, :user_id)
	end

end
