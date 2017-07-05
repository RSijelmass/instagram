class TagsController < ApplicationController
	def show
		@tags = Tag.where(params[:id])
	end
end
