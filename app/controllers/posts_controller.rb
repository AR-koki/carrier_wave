class PostsController < ApplicationController

	def index
		@posts = Post.all
	end

	def new
		@post = Post.new
	end

	def create
		@post = Post.new(post_params)
		@post.save!
		redirect_to posts_path
	end

	def show
		@post = Post.find(params[:id])
	end

	def edit
	end

	def update
	end

	def destory
	end

	private
	def post_params
		params.require(:post).permit(:title, :body, :user_id, { images: [] })
	end
end
