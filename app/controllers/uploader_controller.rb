class UploaderController < ApplicationController
  def upload
  @photo=Upload.new()
  
  end
  
  def create
  binding.pry
  file_name = params[:upload][:photo].original_filename
  file_directory = "app/assets/images/"
  path = file_directory+file_name
  File.open(path,"wb"){|f| f.write(params[:upload][:photo].read)}
  redirect_to :back
  
  end
end
