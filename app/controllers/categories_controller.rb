class CategoriesController < ApplicationController

<<<<<<< HEAD
  before_action :set_category, only: :show
=======
  before_action :authenticate_user!, except: :show
  before_action :set_category, only: [:show,:edit,:update,:destroy]

  def index
    @categories = Category.all
  end
>>>>>>> 4d196da179bb72cb9b1728fdfba061392f4460fd

  def show
    @posts = Post.where(category_id: [@category.subtree_ids]).paginate(page: params[:page], per_page: 5)
  end

  private

  def set_category
    @category = Category.find(params[:id])
  end

end
