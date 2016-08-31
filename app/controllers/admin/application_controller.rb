module Admin
  class ApplicationController < Administrate::ApplicationController
    before_filter :authenticate_admin

      if Rails.env.production?
        http_basic_authenticate_with name: ENV["ADMIN_NAME"], password: ENV["ADMIN_PASSWORD"]
      else
        http_basic_authenticate_with name: "admin", password: "123456"
      end

    def authenticate_admin
      # TODO Add authentication logic here.
    end


  end
end
