class PostsController < ActionController::Base
  def index
  end

  def new
    @post = Post.new
  end

  def create
    post = Post.create(post_params)
    redirect_to post
  end
  
  private

  def show
    @post = Post.find(params[:id])
  end

  def edit
    @post = Post.find(params[:id])
　end

  def update
    post = Post.find(params[:id])
    post.update(post_params)
    redirect_to post
  end

  def destroy
    post = Post.find(params[:id])
    post.delete
    redirect_to posts_path
  end

  def post_params
    params.require(:post).permit(:title, :contents, :date, :name, :update)
  end

end
