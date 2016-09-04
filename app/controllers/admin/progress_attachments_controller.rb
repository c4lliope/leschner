module Admin
  class ProgressAttachmentsController < ApplicationController
    before_action :set_progress_attachment


    def create
      @progress_attachment = ProgressAttachment.new(progress_attachment_params)

      respond_to do |format|
        if @progress_attachment.save
          format.html { redirect_to @progress_attachment, notice: 'Progress attachment was successfully created.' }
          format.json { render :show, status: :created, location: @progress_attachment }
        else
          format.html { render :new }
          format.json { render json: @progress_attachment.errors, status: :unprocessable_entity }
        end
      end
    end

    private
      # Use callbacks to share common setup or constraints between actions.
      def set_progress_attachment
        @progress_attachment = ProgressAttachment.find(params[:id])
      end

      # Never trust parameters from the scary internet, only allow the white list through.
      def progress_attachment_params
        params.require(:progress_attachment).permit(:progress_id, :image)
      end
  end

end