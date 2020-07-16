class UpdatesController < ApplicationController
  def index
    @update = Update.new
    @show = Update.all.reverse_order
  end

  def create
    @update = Update.new(update_params)
    if @update.save
      redirect_to action: :index
    end
  end

  def update
    @update = Update.find(params[:id])
    if @update.update(contents_params)
      redirect_to action: :index
    end
  end

  private
  def update_params
    params.require(:update).permit(:name, :contents)
  end
end
