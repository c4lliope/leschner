class AdminContactsController < ApplicationController
  def new
    @admin_contact = AdminContact.new
  end

  def create
    @admin_contact = AdminContact.new(params[:admin_contact])
    @admin_contact.request = request
    if @admin_contact.deliver
      flash.now[:notice]
    else
      flash.now[:error] = 'Cannot send message.'
      render :new
    end
  end
end