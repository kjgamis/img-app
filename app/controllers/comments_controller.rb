class CommentsController < ApplicationController
  def create
    @comment = Comment.new

    @comment.name = params[:comment][:name]
    @comment.comment = params[:comment][:comment]
    @comment.photo_id = params[:photo_id]
    @comment.save

    redirect_to photos_url
  end

  def edit
    @comment = Comment.find(params[:id])
    @photo = Photo.find(params[:photo_id])

  end

  def update

    @comment.name = params[:comment][:name]
    @comment.comment = params[:comment][:comment]
    @comment.photo_id = params[:photo_id]

    @comment.save

    redirect_to photo_url(params[:photo_id])
  end

  def destroy

    @photo = Photo.find(params[:photo_id])
    @comment = Comment.find(params[:id])

    @comment.destroy

    redirect_to photo_url(@photo)

  end
end
