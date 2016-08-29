module Admin
  class ApplicationController < Administrate::ApplicationController
    before_filter :authenticate_admin


      http_basic_authenticate_with name: ENV["ADMIN_NAME"], password: ENV["ADMIN_PASSWORD"]

      #http_basic_authenticate_with name: "admin", password: "123456"


    def authenticate_admin
      # TODO Add authentication logic here.
    end


  end
end
