class PostsController < ApplicationController
  before_action :find_post, only: [:show]
  def new
  	
  end

  def create
    @post = Post.new(post_params)
    @post.save
    redirect_to @post 
  end

  def show
  end

  def index
  	@posts = Post.all.order("created_at ASC")
  end

  private
  	def find_post
      @post = Post.find(params[:id])
    end

    def post_params
  	  params.require(:post).permit(:title, :body)
    end
end
