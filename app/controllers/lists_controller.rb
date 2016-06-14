class ListsController < ApplicationController

  def index
    @list = List.new
    @lists = List.all
  end

  def create
    @list = List.new
    @list.name = params[:list][:name]
    @list.save
    redirect_to list_path(@list)
  end

  def show
    @list = List.find(params[:id])
  end

end
