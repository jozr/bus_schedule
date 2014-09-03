class StopsController < ApplicationController
  def index
    @lines = Line.all
    @stations = Station.all
    @stops = Stop.all
  end

  def new
    @station = Station.find(params[:station_id])
    @stop = Stop.new
  end

  def create
    @stop = Stop.create(params[:stops])
    if @stop.valid?
      flash[:notice] = "Your new stop has been added."
      redirect_to stations_path
    else
      render "new"
    end
  end

  def show
    @stop = Stop.find(params[:id])
  end

  def edit
    @stop = Stop.find(params[:id])
  end

  def update
    @stop = Stop.find(params[:id])
    @stop.update(params[:stop])
    if @stop.valid?
      flash[:notice] = "Your stop has been updated."
      redirect_to stops_path
    else
      render 'edit'
    end
  end

  def destroy
    @stop = Stop.find(params[:id])
    @stop.destroy
    flash[:notice] = "This stop has been deleted"
    redirect_to stops_path
  end
end
