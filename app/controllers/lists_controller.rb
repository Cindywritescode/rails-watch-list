class ListsController < ApplicationController
  # authentication
  skip_before_action :authenticate_user!, only: [:index, :show]

  before_action :find_list, only: [:show, :destroy]

  def index
    @lists = List.all
  end

  def show
    @bookmark = Bookmark.new
    @review = Review.new(list: @list)
  end

  def new
    @list = List.new
  end

  def create
    @list = List.new(list_params)
    if @list.save
      redirect_to list_path(@list)
    else
      render :new
    end
  end

  def destroy
    @list.destroy
    redirect_to lists_path
  end

  private
  
  def find_list
    @list = List.find(params[:id])
  end
  
  def list_params
    params.require(:list).permit(:name, :photo)
  end

end
