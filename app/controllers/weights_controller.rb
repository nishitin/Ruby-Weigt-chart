class WeightsController < ApplicationController
  before_action :authenticate_user!
  # ↑これは登録していないとできないアクションだよってこと

  def index
    @weights = Weight.all
    @weight_chart = current_user.weight
  end

  def new
    @weight = Weight.new
  end

  def show
  end

  def create
    @weight = current_user.weight.build(weight_params)

    if @weight.save
       redirect_to root_path, flash: { notice: '体重の投稿が反映されました' }
    else
       render :new
    end
  end

  def edit
    @weight = weight.find([:id])
  end

  def update
  end

  def destroy
    @weight = Weight.find([:id])
  end

  private

  def weight_params
    params.require(:weight).permit(:value)
  end

end
