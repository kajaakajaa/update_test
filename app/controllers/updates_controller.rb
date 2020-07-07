class UpdatesController < ApplicationController
  def index
    @update = Update.all.reverse_order
    # @update = 
  end

  def new
  end

  def edit
  end

  def update
  end
end
