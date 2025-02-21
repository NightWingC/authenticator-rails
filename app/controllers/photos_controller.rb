class PhotosController < ApplicationController
  def index
    @photos = Photo.all
  end

  def show
    @photo = Photo.find(params[:id])
    respond_to do | format |
      # HTML
      format.html { render :show }
      format.json { render json: @photo }
      # JSON
      # Script js
    end
    # render json: @photo
  end

  def new
  end

  def edit
    @id = params[:id]
  end

  def update
    photo = Photo.find(params[:id])
    photo.title = params[:photo][:title]
    photo.image_url = params[:photo][:image_url]
    photo.save
    redirect_to photo
  end

  def create
    photo = Photo.new
    photo.title = params[:photo][:title]
    photo.image_url = params[:photo][:image_url]
    photo.save
    # redirect_to photo

    respond_to do | format |
      format.html { redirect_to "/photos" }
      format.json { render json: @photo, status: :created }
    end
  end

  def destroy
    # photo = Photo.find(params[:id])
    # photo.destroy
    # redirect_to "/photos"

    photo = Photo.find(params[:id])
    photo.destroy

    respond_to do | format |
      format.html { redirect_to "/photos" }
      format.json { head 200 }
    end
  end
end
