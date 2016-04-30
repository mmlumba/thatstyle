class ImagesController < ApplicationController

  def index
    @images = Image.all
  end

  def new
    @image = Image.new
  end

  def create
    @image = Image.new(image_params)

    if @resume.save
      redirect_to resume_path, notice: "The style you have added #{@image.name}, has been uploaded"
    else
      render "new"
    end
  end

  def destroy
    @image = Image.find(params[:id])
    @image.destroy
    redirect_to resumes_path, notice: "You have deleted your style #{@image.name}."
  end

  private
  def image_params
    param.require(:image).permit(:name, :attachment)
  end
end
