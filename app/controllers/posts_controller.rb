class PostsController < ApplicationController
	before_action :require_login

	def index
		p "current user:", current_user
		@posts = Post.all
	end
	
  def show
    @post = Post.find(params[:id])
	end

	def new
		@post = Post.new
	end
	
	def create
		@post = Post.new(post_params)
		@post.save
		p "Post:"
		p @post
		redirect_to posts_path
	end

	private
	
	def post_params
		params.require(:post).permit(:title, :image)
	end
end
