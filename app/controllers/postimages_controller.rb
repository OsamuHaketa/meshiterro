class PostimagesController < ApplicationController
  def new
    @postimage = Postimage.new(postimage_params)
  end
  
  def create
    @postimage = Postimage.new(post_image_params)
    @postimage.user_id = current_user.id
    @postimage.save
    redirect_to postimages_path
  end

  def index
  end

  def show
  end
  
   def destroy
  end

  private

  def post_image_params
    params.require(:postimage).permit(:shop_name, :image, :caption)
  end
end
