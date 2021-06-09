class WeightsController < ApplicationController
  def index
    @weights = Weight.all
    # ↓ロジック的にはログインしたユーザが持っている体重という感じ
    # @weight_chart = current_user.weights.value
  end

  def new
    @weights = Weight.new
  end

  def show
    @weight = find([:id])
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
  end

  def update
  end

  private

  def weight_params
    params.require(:weight).permit(:value)
  end

end
