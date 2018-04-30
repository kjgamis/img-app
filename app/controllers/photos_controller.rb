class PhotosController < ApplicationController
  before_action :ensure_logged_in, except: [:index]
  before_action :load_picture, only: [:show, :edit, :update, :destroy]
  before_action :ensure_ownership, only: [:edit, :update, :destroy]

  def index
    @photo = Photo.all
  end

  def show
    @comment = Comment.new
  end

  def new
    @photo = Photo.new
  end

  def create
    @photo = Photo.new

    @photo.artist = params[:photo][:artist]
    @photo.title = params[:photo][:title]
    @photo.photo = params[:photo][:photo]

     # assigns the photo to the user that is logged in
    @photo.user_id = current_user.id

    if @photo.save
      # if the picture gets saved, generate a get request to "/pictures" (the index)
      redirect_to photos_url
    else
      # otherwise render new.html.erb
      render :new
    end
  end

  def edit

  end

  def update
    @photo.artist = params[:photo][:artist]
    @photo.title = params[:photo][:title]
    @photo.photo = params[:photo][:photo]

     # assigns the photo to the user that is logged in
    @photo.user_id = current_user.id

    if @photo.save
      # if the picture gets saved, generate a get request to "/pictures" (the index)
      redirect_to photo_url(@photo)
    else
      # otherwise render new.html.erb
      render :edit
    end
  end

  def destroy
    @photo.destroy
    redirect_to photos_url
  end
end
