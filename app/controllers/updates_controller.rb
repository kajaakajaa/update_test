class UpdatesController < ApplicationController
  def index
    @update = Update.all.reverse_order
  end

  def new
    @update = Update.new
  end

  def create
    @update = Update.new(update_params)
    if @update.save
      redirect_to action: :index
    else
      render "new"
    end
  end

  def edit
    @update = Update.find(params[:id])
  end

  def update
    @update = Update.find(params[:id])
    if @update.update(contents_params)
      redirect_to action: :index
    else
      render "edit"
    end
  end

  private
  def update_params
    params.require(:update).permit(:name, :age)
  end
  def contents_params
    params.require(:update).permit(:contents)
  end
end
