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
		@post = Post.create(post_params)
		Post.find_tag(post_params[:title], @post.id)
		redirect_to posts_path
	end

	private
	
	def post_params
		params.require(:post).permit(:title, :image).merge(user_id: current_user.id)
	end
end
