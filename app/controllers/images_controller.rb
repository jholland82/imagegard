class ImagesController < ApplicationController

  def index

  end

  def new
    @image = Image.new
  end
  
  def create
    @image = Image.new(image_params)
    @image.encrypt
    logger.info "******#{@image.image_file}*****"
    if @image.save
      flash[:notice] = "Image successfully saved"
      redirect_to :action => :index
    else
      flash[:alert] = @image.errors.full_messages
      redirect_to :action => :new
    end
  end

  private
    def image_params
      params.fetch(:image, {}).permit(:image_file)
    end
end
