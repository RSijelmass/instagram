class PostsController < ApplicationController
	before_action :require_login

	def index
		@posts = Post.order(:created_at).reverse
	end
	
  def show
    @post = Post.find(params[:id])
	end

	def new
		@post = Post.new
	end
	
	def create
		@post = Post.new(post_params)
		#make sure both title and image are filled in! can't be null
		if @post.save
			@post.find_tag(post_params[:title])
			redirect_to posts_path
		else
			render :new, notice: 'Something went wrong! Try again.' 
		end
	end

	private
	
	def post_params
		params.require(:post).permit(:title, :image).merge(user_id: current_user.id)
	end
end
