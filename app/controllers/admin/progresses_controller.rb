module Admin
  class ProgressesController < Admin::ApplicationController
    def create
       @progress = Progress.new(progress_params)

       respond_to do |format|
         if @progress.save
           params[:progress_attachments]['image'].each do |a|
              @progress_attachment = @progress.progress_attachments.create!(:image => a)
           end
           format.html { redirect_to admin_progresses_path, notice: 'Progress was successfully created.' }
         else
           format.html { render action: 'new' }
         end
       end
     end

     private
       def progress_params
          params.require(:progress).permit(:title, :content, :date, :main_image, progress_attachments_attributes: [:id, :progress_id, :image])
       end
  end
end
