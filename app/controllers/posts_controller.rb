class PostsController < ApplicationController
<<<<<<< HEAD

  before_action :set_post, only: :show
=======
  before_action :authenticate_user!, except: [:index, :show]
  before_action :set_post, only: [:show,:edit,:update,:destroy]
>>>>>>> 4d196da179bb72cb9b1728fdfba061392f4460fd

  def index
    @posts = Post.paginate(page: params[:page], per_page: 5)
  end

  def show
  end

  private

  def set_post
    @post = Post.find(params[:id])
  end
end
