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
       redirect_to weights_path, flash: { notice: '体重の投稿が反映されました' }
    else
       render :new
    end
  end

  def edit
    @weight = Weight.find(params[:id])
  end

  def update
    @weight = Weight.find(params[:id])
    if @weight.update(update_params)
      redirect_to weights_path, flash: { notice: '体重の編集が反映されました' }
    else
      render :edit
    end
  end

  def destroy
    @weight = Weight.find(params[:id])
  end

  private

  # これはcreateしたとき
  def weight_params
    params.require(:weight).permit(:value)
  end

  #これはupdpateしたとき
  def update_params
    params.require(:weight).permit(:value)
  end
end
