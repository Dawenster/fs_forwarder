class PagesController < ApplicationController
  def index
    redirect_to URI::decode(params[:url])
  end
end