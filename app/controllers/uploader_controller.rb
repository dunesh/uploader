class UploaderController < ApplicationController
  def upload
  @photo=Upload.new()
  end
  
  def create
  
  binding.pry
  end
end
