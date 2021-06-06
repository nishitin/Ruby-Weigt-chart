class WeightsController < ApplicationController
  def index
    # @weights = Weight.all
  end

  def new
  end

  def show
    @weight = find([:id])
  end

  def create
  end

  def edit
  end

  def update
  end

  def create
  end

  private

  def weight_params
  end

end
