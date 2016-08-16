class SupportsController < ApplicationController
  def new
    @support = Support.new
  end

  def create
    @support = Support.new(params[:support])
    @support.request = request
    if @support.deliver
      flash.now[:notice]
    else
      flash.now[:error] = 'Cannot send message.'
      render :new
    end
  end
end