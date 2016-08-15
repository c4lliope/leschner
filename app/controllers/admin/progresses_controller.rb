module Admin
  class ProgressesController < Admin::ApplicationController
    def create

     @progress = Progress.new(progress_params)
     @progress.save!
     @progress.images[0].url # => '/url/to/file.png'
     @progress.images[0].current_path # => 'path/to/file.png'
     @progress.images[0].identifier # => 'f

     if @progress.save!
       redirect_to admin_progresses_path, notice: "New article created!"
     end
    end

    private
    def progress_params
      params.require(:progress).permit(:title, :date, :content, { images: [] } )
    end
  end
end
