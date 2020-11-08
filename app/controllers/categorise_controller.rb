class CategoriseController < ApplicationController
  def index
  	@categorise = Category.all
  end

  def show
  	@categorise = Post.where(category_id: params[:id])
  end

  private
  def category_params
  	params.require(:category).permit(:category_id, :post_id)
  end
end
