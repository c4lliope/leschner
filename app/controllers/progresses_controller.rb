class ProgressesController < ApplicationController


  def index
    @progresses = Progress.all
  end

  def show
    @progress = Progress.find(params[:id])
    @progress_attachments = @progress.progress_attachments.all
  end

  def new
     @progress = Progress.new
     @progress_attachment = @progress.progress_attachments.build
  end

   private
     def progress_params
        params.require(:progress).permit(:title, :content, :date, :main_image, progress_attachments_attributes: [:id, :progress_id, :image])
     end
end
