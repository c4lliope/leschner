class ProgressesController < ApplicationController

  def index
    @progresses = Progress.all
  end

  def show
    @progress = Progress.find(params[:id])
  end

  def new
    @progress = Progress.new
  end

  def edit
    @progress = Progress.find(params[:id])
  end

  def create
    @progress = Progress.new(progress_params)

    respond_to do |format|
      if @progress.save
        format.html { redirect_to @progress, notice: 'progress was successfully created.' }
        format.json { render :show, status: :created, location: @progress }
      else
        format.html { render :new }
        format.json { render json: @progress.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    @progress = Progress.find(params[:id])
    if @progress.update(progress_params)
      redirect_to tour_path(@progress.id)
    else
    render :progress
    end
  end

  private

  # Use strong_parameters for attribute whitelisting
  # Be sure to update your create() and update() controller methods.

  def progress_params
    params.require(:progress).permit(:title, :date, :content)
  end
end
