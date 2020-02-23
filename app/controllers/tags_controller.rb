class TagsController < ApplicationController
  before_action :require_login, only: [:destroy]
  def show
    @tag = Tag.find(params[:id])
  end

  def index
    @tag = Tag.all
  end

  def destroy
    @tag = Tag.find(params[:id])
    if @tag.destroy
      flash.notice = "'#{@tag.name}' tag successfully deleted."
      redirect_to tags_path
    else
      flash.notice = 'Something went wrong'
      redirect_to tags_path
    end
  end
  
end
