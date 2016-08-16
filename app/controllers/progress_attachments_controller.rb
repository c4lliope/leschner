class ProgressAttachmentsController < ApplicationController
  before_action :set_progress_attachment, only: [:show, :edit, :update, :destroy]


  def index
    @progress_attachments = ProgressAttachment.all
  end


  def show
  end


  def new
    @progress_attachment = ProgressAttachment.new
  end

  def edit
  end


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


  def update
    respond_to do |format|
      if @progress_attachment.update(progress_attachment_params)
        format.html { redirect_to @progress_attachment, notice: 'Progress attachment was successfully updated.' }
        format.json { render :show, status: :ok, location: @progress_attachment }
      else
        format.html { render :edit }
        format.json { render json: @progress_attachment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /progress_attachments/1
  # DELETE /progress_attachments/1.json
  def destroy
    @progress_attachment.destroy
    respond_to do |format|
      format.html { redirect_to progress_attachments_url, notice: 'Progress attachment was successfully destroyed.' }
      format.json { head :no_content }
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
