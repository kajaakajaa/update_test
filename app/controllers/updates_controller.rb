class UpdatesController < ApplicationController
  def index
    @update = Update.new
    @show = Update.find_by_sql(["SELECT * FROM updates WHERE id IN(SELECT MAX(id) 
      FROM updates GROUP BY name);"])
  end

  def create
    @update = Update.new(update_params)
    if @update.save
      redirect_to action: :index
    end
  end

  def update
    @update = Update.where(id: params[:updates].keys)
    @update.each do |update|
      update.contents = params[:updates]["#{update.id}"]
      update.save!
    end
    redirect_to action: :index
  end

  private
  def update_params
    params.require(:update).permit(:name, :contents)
  end
end
