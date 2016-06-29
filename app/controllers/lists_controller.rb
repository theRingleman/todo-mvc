class ListsController < ApplicationController

  def index
    @list = List.new
    @lists = List.all
  end

  def create
    list = List.create(list_params)
    redirect_to list_path(list)
  end

  def show
    @list = List.find(params[:id])
    @item = @list.items.build
  end

  private

  def list_params
    params.require(:list).permit(:name)
  end

end
