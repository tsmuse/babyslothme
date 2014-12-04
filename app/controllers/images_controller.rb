class ImagesController < ApplicationController
  
  def index
  	images = Image.all
  	@image = images[rand(images.length)]
  end

  private
  def image_params
  	params.require(:image).permit(:title, :image_url, :image_source)
  end
end
