class UploaderController < ApplicationController
  def upload
  @photo=Upload.new()
  
  end
  
  def create
 
  @photo=Upload.new(params[:name=>params[:id].original_filename])
    @photo.save!
  redirect_to :back
  
  end
end
