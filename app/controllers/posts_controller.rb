class PostsController < ActionController::Base
  def index
  end

  def new
    @post = Post.new
  end

  def create
    Post.create(post_params)
  end
  
  private

  def show
    @post = Post.find(params[:id])
  end

  def post_params
    params.require(:post).permit(:title, :contents, :date, :name, :update)
  end

end
