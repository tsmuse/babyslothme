class ImagesController < ApplicationController
  
  def index
  	images = Image.all
  	@image = images[rand(images.length)]
  end

  def slothpen
  	@sloths = Image.all
  	render json: @sloths
  end

  private
  
  def image_params
  	params.require(:image).permit(:title, :image_url, :image_source)
  end

end
