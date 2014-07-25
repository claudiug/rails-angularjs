class StaticController < ApplicationController

  def index
  end

  def stocks
    render json: Stock.all
  end

  def create
    render json: Stock.create(stock_params)
  end

  private
  def stock_params
    params.require(:stock).permit(:symbol, :name, :bid, :ask, :year_low, :year_high)
  end
end
