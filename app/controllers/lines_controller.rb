class LinesController < ApplicationController


  def new
    @line = Line.new
  end

  def create
    @line = Line.create(params[:line])
    if @line.valid?
      flash[:notice] = "Your new line has been added."
      redirect_to stations_path
    else
      render 'new'
    end
  end

  def show
    @line = Line.find(params[:id])
  end

  def edit
    @line = Line.find(params[:id])
  end

  def update
    @line = Line.find(params[:id])
    @line.update(params[:line])
    if @line.valid?
      flash[:notice] = "Your line has been updated."
      redirect_to stations_path
    else
      render 'edit'
    end
  end

  def destroy
    @line = Line.find(params[:id])
    @line.destroy
    flash[:notice] = "This line has been deleted"
    redirect_to stations_path
  end
end
