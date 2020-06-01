class ChartsController < ApplicationController

  def index
    @charts = Chart.all
  end

  def new 
    @chart = Chart.new
  end

  def create
    Chart.create(charts_params)
  end
  
  def destroy
    chart = Chart.find(params[:id])
    chart.destroy
  end

  def edit
    @chart = Chart.find(params[:id])
  end

  def update
    chart = Chart.find(params[:id])
    chart.update(charts_params)
  end
  
  def show
    @chart = Chart.find(params[:id])
  end
  
  private
  def charts_params
    params.require(:chart).permit(:name, :image, :text)
  end

end
