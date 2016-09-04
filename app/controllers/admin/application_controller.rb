module Admin
  class ApplicationController < Administrate::ApplicationController




      if Rails.env.production?
        http_basic_authenticate_with name: ENV["ADMIN_NAME"], password: ENV["ADMIN_PASSWORD"]
      else
        http_basic_authenticate_with name: "admin", password: "123456"
      end


  end
end
