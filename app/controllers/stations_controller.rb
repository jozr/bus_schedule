class StationsController < ApplicationController
  def index
    @lines = Line.all
    @stations = Station.all
  end

  def new
    @station = Station.new
  end

  def create
    @station = Station.create(params[:station])
    if @station.valid?
      flash[:notice] = "Your new station has been added."
      redirect_to stations_path
    else
      render 'new'
    end
  end

  def show
    @station = Station.find(params[:id])
  end

  def edit
    @station = Station.find(params[:id])
  end

  def update
    @station = Station.find(params[:id])
    @lines = @station.lines
    @station.update(params[:station])
    if @station.valid?
      flash[:notice] = "Your station has been updated."
      redirect_to stations_path
    else
      render 'edit'
    end
  end

  def destroy
    @station = Station.find(params[:id])
    @station.destroy
    flash[:notice] = "This station has been deleted"
    redirect_to stations_path
  end

end
